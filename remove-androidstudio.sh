#!/usr/bin/env bash

tput bel
echo "ATTENTION!!!!"
echo "This script will completely wipe out AndroidStudio, Android SDKs and any related file from this computer"
echo "Use at your own risk"
tput bel
echo "Hit control-C if you want to leave this script now without making any change to your computer"
echo "Android projects will not be deleted"
echo "Do you want to continue? [y/n]"
read answer
if [[ "$answer" == 'y' ]]; then
  echo "yes"
else
  echo "Leaving system unchanged!"
  exit 0
fi

echo "Removing AndroidStudio"
set -xe

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
rm -Rf ~/Library/Preferences/AndroidStudio*
rm -Rf ~/Library/Preferences/com.google.android.*
rm -Rf ~/Library/Preferences/com.android.*
rm -Rf ~/Library/Application\ Support/AndroidStudio*
rm -Rf ~/Library/Logs/AndroidStudio*
rm -Rf ~/Library/Caches/AndroidStudio*
rm -Rf ~/.AndroidStudio*
rm -Rf ~/.android
rm -Rf ~/Library/Android*
df -g
set +xe

echo "Done"
exit 0
