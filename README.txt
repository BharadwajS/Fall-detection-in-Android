Fall detection in Android

Table of Contents:

I. General Information
II. Setup
III. Contact info

===========================================================

I.General Information.

The project was developed in MATLAB and Eclipse in conjunction.Details of the softwares used are listed below. 

Eclipse 3.6.2 (Helios) or greater
Eclipse JDT plugin (included in most Eclipse IDE packages)
JDK 6 (JRE alone is not sufficient)
Android Development Tools plugin (recommended) 

One can download ADT Bundle which comes with preinstalled Android 4.2 platform. The project is complied for Android 2.3.3 platform as target and thus it should also be installed.

The MATLAB files are tested on MATLAB 2012a.It'll work in older versions of MATLAB too.

The device used was Huawei Ascend y200 which runs on Android 2.3.6 platform.For development the device has to be set in Debug mode.To select debug mode goto Settings->Applications->Development.Check the USB debuggging enabled to true. 

As soon as device in debug mode is plugged in system the drivers are installed in Windows 7.For reference use the following link 

http://developer.android.com/tools/device.html
http://developer.android.com/tools/extras/oem-usb.html

In case driver is not installed in Windows 7,install Huawei Suite. 

http://www.huaweidevice.com/resource/mini/201105239635/hi_suite_en/

To check whether device is detected, use command adb devices in command prompt.The adb tool is present in sdk\platform-tools\. Devices detected are listed. 
-----------------------------------------------------------------
II. Setup

To run the Android project.

Import Android project into workspace
To run the project on the device,the device must be set to debugging mode.
Connect the device and Run the Android project as an Android application.

For the Matlab files

Import the fall_data mat file into the workspace.
Run posture_detection_23_11_12.m
-----------------------------------------------------------------
III. Contact info.

For any doubts mail me at tempest.barathwaj@gmail.com