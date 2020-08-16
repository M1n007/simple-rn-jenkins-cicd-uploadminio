#!/bin/bash

ssh root@$SERVER '

cd project-rn-folder
./upload.sh yourbucket/apps-build ./android/app/build/outputs/apk/release/app-release.apk

'
