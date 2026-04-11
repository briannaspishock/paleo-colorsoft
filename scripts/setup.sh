
# --- 1. tools ---
# install homebrew & adb
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install --cask android-platform-tools

# verify connection (ensure USB debugging is on)
adb devices 

# --- 2. bloatware removal ---
# stripping away amazon apps
adb shell pm uninstall -k --user 0 com.amazon.kindle.kso 
adb shell pm uninstall -k --user 0 com.amazon.photos
adb shell pm uninstall -k --user 0 com.amazon.windowshop
adb shell pm uninstall -k --user 0 com.amazon.cloud9
adb shell pm uninstall -k --user 0 com.amazon.tahoe
adb shell pm uninstall -k --user 0 com.amazon.zico

# stop background noise
adb shell am force-stop com.amazon.weather
adb shell am force-stop com.amazon.device.software.ota

# limit bg processes
adb shell settings put global background_process_limit 2

# --- 3. new UI ---
# install niagara/nova and launcher hijack
adb install om.teslacoilsw.launcher_5.0.1-50100_minAPI16(nodpi).apk
adb install LauncherHijackV403.apk
# grant accessibility for hijacking the 'home' button
adb shell settings put secure accessibility_enabled 1

# --- 4. soft color duping ---
# attempt native monochromacy if greyscale is the vibe
adb shell settings put secure accessibility_display_daltonizer_enabled 1
adb shell settings put secure accessibility_display_daltonizer 0

# CF.lumen: icy bone (R 0.85 G 0.90 B 0.80)
adb install eu.chainfire.lumen_3.70.apk
adb shell pm grant eu.chainfire.lumen android.permission.PACKAGE_USAGE_STATS
# force open usage stats menu
adb shell am start -a android.settings.USAGE_ACCESS_SETTINGS

#muted icons
adb install com.whicons.iconpack.apk 

# --- 5. download research apps ---
# android 5.1 compatible legacy builds
adb install com.overdrive.mobile.android.libby_6.4.0.apk
adb install com.foxit.mobile.pdf.lite.apk
adb install com.steadfastinnovation.android.projectpapyrus_3.4.10.apk

# --- 6. screenshot for GitHub ---
adb shell screenrecord --time-limit 5 /sdcard/test.mp4
adb pull /sdcard/test.mp4 ~/Desktop/

adb shell screenrecord --time-limit 5 /sdcard/test2.mp4
adb pull /sdcard/test2.mp4 ~/Desktop/

