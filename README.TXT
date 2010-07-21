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


  Setup vendor

  $ cd vendor/cyanogen/
  $ ./get-rommanager 
  $ ./get-google-files 


  Setup device

  $ cd ../../device/htc
  $ git clone git://github.com/kyosa/device_htc_legend
  $ mv device_htc_legend/ legend
  $ cd legend/
  $ tar -zxvf mydroid.patch.tgz -C ../../..


  Prepair HTC Legend proprietary

  (Connect your Legend to PC via USB cable. Then confirm that adb works.)
  $ ./extract-files.sh


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
    especially,
      HTC Hero/Sapphire developers and contributors and
      Members in the developer's forum of HTC Legend


----
EOF
