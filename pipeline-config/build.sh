#!/bin/bash

ssh root@$SERVER "mkdir -p ~/project-rn-folder"


scp -r ./* root@$SERVER:~/project-rn-folder

ssh root@$SERVER '

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
cd project-rn-folder
rm -rf node_modules/
npm i
cd android
./gradlew assembleRelease

'
