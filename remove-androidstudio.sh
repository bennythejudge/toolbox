#!/usr/bin/env bash

echo "Remove AndroidStudio"

echo "\aATTENTION!!!!\a"
echo "This script will completely wipe out AndroidStudio, Android SDKs and any related file from this computer"
echo "Use at your own risk"
echo "Hit control-C if you want to leave this script without making any change to your computer"
echo "Android projects will not be deleted"
echo "Do you want to continue? [y/n]"
read answer
if [[ "$answer" = "y"]]; then
  print "yes"
  exit 0
else
  print "no"
  exit 1
fi


rm -Rf ~/Library/Preferences/AndroidStudio*
rm -Rf ~/Library/Preferences/com.google.android.*
rm -Rf ~/Library/Preferences/com.android.*
rm -Rf ~/Library/Application\ Support/AndroidStudio*
rm -Rf ~/Library/Logs/AndroidStudio*
rm -Rf ~/Library/Caches/AndroidStudio*
rm -Rf ~/.AndroidStudio*
rm -Rf ~/.gradle
rm -Rf ~/.android
rm -Rf ~/Library/Android*
rm -Rf /usr/local/var/lib/android-sdk/
rm -Rf ~/.android
rm -Rf ~/Library/Android*
rm -Rf /usr/local/var/lib/android-sdk/
rm -Rf ~/.AndroidStudio*
rm -Rf /Applications/Android\ Studio.app/
rm -rf
rm -Rf ~/Library/Preferences/AndroidStudio*
rm -Rf ~/Library/Preferences/com.google.android.*
rm -Rf ~/Library/Preferences/com.android.*
rm -Rf ~/Library/Application\ Support/AndroidStudio*
rm -Rf ~/Library/Logs/AndroidStudio*
rm -Rf ~/Library/Caches/AndroidStudio*
rm -Rf ~/.AndroidStudio*
rm -Rf ~/.android
rm -Rf ~/Library/Android*
df -k
