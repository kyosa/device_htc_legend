#!/bin/sh

echo "enODEXed version 1.0"

PWD=`pwd`

if [ ! -e out/target/product/legend/system/bin/dexopt-wrapper ]
then
    echo dexpopt-wrapper not found!
    echo   try: \( cd ./build/tools/dexpreopt/dexopt-wrapper \; mm \)
    exit;
fi

#make dexopt-wrapper -j4
#make zipalign -j4
adb push out/target/product/legend/system/bin/dexopt-wrapper /data
adb shell chmod 755 /data/dexopt-wrapper
adb shell mkdir /data/dexopt

mkdir -p $PWD/dexopt
original_zip=`find $PWD/out/target/product/legend -name "*-ota-*.zip"`
cd $PWD/dexopt
unzip $original_zip

cd system/app
find . -name "*.apk" | sed 's/\.\/\(.*\)\.apk/adb push \1.apk \/data\/dexopt; adb shell \/data\/dexopt-wrapper \/data\/dexopt\/\1.apk \/data\/dexopt\/\1.odex; adb pull \/data\/dexopt\/\1.odex .; adb shell rm \/data\/dexopt\/\1.odex; adb shell rm \/data\/dexopt\/\1.apk; zip -d \1.apk classes.dex; mv \1.apk \1.apk.zip; \.\.\/\.\.\/\.\.\/out\/host\/linux-x86\/bin\/zipalign -f -v 4 \1.apk.zip \1.apk.out.zip; mv \1.apk.out.zip \1.apk/' > e.sh && sh e.sh && rm e.sh
rm *.apk.zip

cd ../framework
#find . -name "*.jar" | sed 's/\.\/\(.*\)\.jar/adb push \1.jar \/data\/dexopt; adb shell \/data\/dexopt-wrapper \/data\/dexopt\/\1.jar \/data\/dexopt\/\1.odex; adb pull \/data\/dexopt\/\1.odex .; adb shell rm \/data\/dexopt\/\1.odex; adb shell rm \/data\/dexopt\/\1.jar; zip -d \1.jar classes.dex; mv \1.jar \1.jar.zip; \.\.\/\.\.\/\.\.\/out\/host\/linux-x86\/bin\/zipalign -f -v 4 \1.jar.zip \1.jar.out.zip; mv \1.jar.out.zip \1.jar/' > e.sh && sh e.sh && rm e.sh
#rm *.jar.zip

cd ../..
zip -r ../update.zip *

cd ..
java -jar $PWD/out/host/linux-x86/framework/signapk.jar $PWD/build/target/product/security/testkey.x509.pem $PWD/build/target/product/security/testkey.pk8 update.zip legend_CM6.0.0a_kyosa_build.zip
