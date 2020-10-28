<p align="left">
	<img width="240" src="https://raw.githubusercontent.com/dsckiet/resources/master/dsckiet-logo.png" />
	<h2 align="left"> Help Me </h2>
	<h4 align="left"> Emergencies and disasters impact population health. Public health plays a critical role in working with health and non-health sectors responsible for preparing for and responding to emergencies. In emergencies, large numbers of people may require medical attention. Health care systems may be overstretched, and public order may be threatened. Hence we want software solutions such that social media can be used in public health emergency response. Such a tool/page/plugin should have below capabilities.<h4>
</p>

---
[![DOCS](https://img.shields.io/badge/Documentation-see%20docs-green?style=for-the-badge&logo=appveyor)](INSERT_LINK_FOR_DOCS_HERE) 
  [![UI ](https://img.shields.io/badge/User%20Interface-Link%20to%20UI-orange?style=for-the-badge&logo=appveyor)](INSERT_UI_LINK_HERE)


## Functionalities
-  Alarm message during emergencies 
-  Providing Precautionary steps to be taken during emergency/disasters
-  Help in finding nearby available healthcare systems
-  Providing First aid/primary steps to be taken/provided to patients, in case of emergencies/disasters.  

<br>


# Instructions to run


## How to Install Flutter on Windows?
### Minimum System Requirements

* Operating Systems: Windows 7 or later [64-bit]
* Disk Space: 400 MB
* Git for Windows

### Get the Flutter SDK

* Download Latest Flutter SDK [HERE](https://flutter.dev/docs/development/tools/sdk/releases?tab=windows)
* Unzip the downloaded zip in C:\flutter .
* Locate flutter_console.bat inside the flutter directory and start it by double-clicking.

### Update your path

If you wish to run Flutter commands in the regular Windows console, take these steps to add Flutter to the PATHenvironment variable:

* From the Start search bar, type ‘env’ and select Edit environment variables for your account
* Under User variables check if there is an entry called Path:
* If the entry does exist, append the full path to flutter\bin using ; as a separator from existing values.
* If the entry does not exist, create a new user variable named Path with the full path to flutter\bin as its value.
Note that you will have to close and reopen any existing console windows for these changes to take effect.

### Run flutter doctor

From a console window which has the Flutter directory in the path (see above), run the following command to see if there are any platform dependencies you need to complete the setup:

* C:\flutter>flutter doctor
This command checks your environment and displays a report of the status of your Flutter installation. Check the output carefully for other software you may need to install or further tasks to perform (shown in bold text).

##### For example:

[-] Android toolchain - develop for Android devices
• Android SDK at C:\Android\sdk
✗ Android SDK is missing command line tools; download from https://goo.gl/XxQghQ
• Try re-installing or updating your Android SDK,
visit https://flutter.dev/setup/#android-setup for detailed instructions.

## Android Setup

Flutter relies on a full installation of Android Studio to supply its Android platform dependencies. However, you can write your Flutter apps in a number of editors.

### Install Android Studio

* Download and install Android Studio.
* Start Android Studio, and go through the ‘Android Studio Setup Wizard’. This installs the latest Android SDK, Android SDK Platform-Tools, and Android SDK Build-Tools, which are required by Flutter when developing for Android.

### Set up your Android device
To prepare to run and test your Flutter app on an Android device, you’ll need an Android device running Android 4.1 (API level 16) or higher.

* Enable Developer options and USB debugging on your device. Detailed instructions are available in the Android documentation.
* Windows-only: Install the Google USB Driver
* Using a USB cable, plug your phone into your computer. If prompted on your device, authorize your computer to access your device.
* In the terminal, run the flutter devices command to verify that Flutter recognizes your connected Android device.

By default, Flutter uses the version of the Android SDK where your adb tool is based. If you want Flutter to use a different installation of the Android SDK, you must set the ANDROID_HOME environment variable to that installation directory.

### Install the Flutter and Dart plugins
* Start Android Studio.
* Open plugin preferences (File > Settings > Plugins).
* Select Browse repositories, select the Flutter plugin and click Install.
* Click Yes when prompted to install the Dart plugin.
* Click Restart when prompted.

## How to Install Flutter on MacOS?

Minimum System Requirements

* Operating Systems: macOS [64-bit]
* Disk Space: 700 MB
* Git for macOS
* Get the Flutter SDK
* Download Latest Flutter SDK HERE
* Extract the file in the desired location e.g.
$ cd ~/development
$ unzip ~/Downloads/flutter_macos_v1.5.4-hotfix.2-stable.zip
* Add the flutter tool to your path. To do this, open your bash profile from your terminal (might need sudo)
$ sudo vim ~/.bash_profile
* Add your flutter path to the $PATH variable in bash_profile. 

E.g. If you extracted flutter in your Applications folder, your path will be /Applications/flutter/bin . Add this to the existing $PATH variable by using : in between two paths. Once added, save and close the bash_profile . Run terminal again and check the $PATH by running

$ echo $PATH
* You should see your Flutter path added to the $PATH

Run flutter precache in the terminal.
### Run flutter doctor
Run the following command to see if there are any dependencies you need to install to complete the setup (for verbose output, add the -v flag):

$ flutter doctor
This command checks your environment and displays a report to the terminal window. The Dart SDK is bundled with Flutter; it is not necessary to install Dart separately. Check the output carefully for other software you may need to install or further tasks to perform (shown in bold text).

For example: If you haven’t used Flutter before, you might see an output like this by running flutter doctor



Flutter doctor output on a fresh system
You can see there are several things to be done to begin using Flutter in this Mac. To correct these issues, let’s run following commands

### Fix license issue in Android studio
$ flutter doctor --android-licenses
### Fix iOS toolchain issues
( Install Xcode command line tools if you are on Mac OS Mojave)

$ brew update
$ brew install --HEAD usbmuxd
$ brew link usbmuxd
$ brew install --HEAD libimobiledevice
$ brew install ideviceinstaller
### Update iOS-deploy
$ npm install -g ios-deploy
brew does not maintain it any longer, as flutter doctor suggests

## Android Studio — Install Flutter and Dart plugins
* Start Android Studio.
* Open plugin preferences (Preferences > Plugins on macOS, File > Settings > Plugins on Windows).
* Select Browse repositories, select the Flutter plugin and click Install.
* Click Yes when prompted to install the Dart plugin.
* Click Restart when prompted.


### Install VSCode Flutter Extension


Now all issues should be gone

## Android setup
Flutter relies on a full installation of Android Studio to supply its Android platform dependencies. However, you can write your Flutter apps in a number of editors; a later step will discuss that.
### Install Android Studio
* Download and install Android Studio.
* Start Android Studio, and go through the ‘Android Studio Setup Wizard’. This installs the latest Android SDK, Android SDK Platform-Tools, and Android SDK Build-Tools, which are required by Flutter when developing for Android.
#### Set up your Android device
To prepare to run and test your Flutter app on an Android device, you’ll need an Android device running Android 4.1 (API level 16) or higher.

* Enable Developer options and USB debugging on your device. Detailed instructions are available in the Android documentation.
* Windows-only: Install the Google USB Driver
* Using a USB cable, plug your phone into your computer. If prompted on your device, authorize your computer to access your device.
* In the terminal, run the flutter devices command to verify that Flutter recognizes your connected Android device.
* Once ready, run flutter run again to run the app on Android device 😎

By default, Flutter uses the version of the Android SDK where your adb tool is based. If you want Flutter to use a different installation of the Android SDK, you must set the ANDROID_HOME environment variable to that installation directory.

## Set up the Android emulator
To prepare to run and test your Flutter app on the Android emulator, follow these steps:

* Enable VM acceleration on your machine.
* Launch Android Studio > Tools > Android > AVD Manager and select Create Virtual Device. (The Android submenu is only present when inside an Android project.)
* Choose a device definition and select Next.
* Select one or more system images for the Android versions you want to emulate, and select Next. An x86 or x86_64image is recommended.
* Under Emulated Performance, select Hardware — GLES 2.0 to enable hardware acceleration.
* Verify the AVD configuration is correct, and select Finish. For details on the above steps, see Managing AVDs.
* In Android Virtual Device Manager, click Run in the toolbar. The emulator starts up and displays the default canvas for your selected OS version and device.

<br>

## Contributors

* [Aakanksha Shivani](https://github.com/shivaniaakanksha)
* [Shubham Singh](https://github.com/shubham100ev)
* [Shubham Goswami](https://github.com/sgshubham98)
* [Aayush sharma](https://github.com/Ayush783)
* [Satyam](https://github.com/satyamx64)


<br>
<br>

<p align="center">
	Made during 🌙 by DSC KIET
</p>
