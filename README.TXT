README.TXT: device_htc_legend.git
----

* Description

  This repository is for the CyanogenMod 6.0.0-alpha on HTC Legend.
  It is still under working.


* How To Build CM6 for HTC Legend

  Make a workspace

  $ mkdir android-cm
  $ cd android-cm


  Do repo init & sync

  $ repo init -u git://github.com/CyanogenMod/android.git -b froyo
  $ repo sync


  Obtain an OTA package from *ANYWHERE* and copy to android-cm/.

  $ cp ....... legend_update.zip


  Setup vendor

  $ cd vendor/cyanogen/
  $ ./get-rommanager 
  $ ./get-google-files 


  Setup device

  $ cd ../../device/htc
  $ git clone git://github.com/kyosa/device_htc_legend
  $ mv device_htc_legend/ legend
  $ cd legend/
  $ ./unzip-files.sh 
  $ tar -zcvf mydroid.patch.tgz -C ../../..
  $ cd ../../..


  Setup environment

  $ source build/envsetup.sh 
  $ lunch
  (select cyanogen_legend-eng)


  Build CM6

  $ make -j4 otapackage


* Thanks

  CyanogenMod team

  All XDA members, 
    especially, HTC Hero/Sapphire developers and contributors
            and member in the developer forum of HTC Legend


* History

  Thu Jul 8 2010: by kyosa: the first commit


----
EOF
