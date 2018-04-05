#!/bin/sh

PREFIX="/mnt/AA387BDB387BA54B/"
APP_DIR="${PREFIX}Documents/APKTool/V20/"
FRAME_DIR="${PREFIX}Documents/APKTool/V20_frameworks/"

cd work

cd system/app
cp "$APP_DIR"SBSignature/dist/SBSignature.apk SBSignature/

cd ../priv-app
cp "$APP_DIR"LGQuickTools/dist/LGQuickTools.apk LGQuickTools/
cp "$APP_DIR"LGSettings/dist/LGSettings.apk LGSettings/
cp "$APP_DIR"LGSignBoard/dist/LGSignBoard.apk LGSignBoard/
cp "$APP_DIR"LGSignBoardSettings/dist/LGSignBoardSettings.apk LGSignBoardSettings/
cp "$APP_DIR"LGSystemUI/dist/LGSystemUI.apk LGSystemUI/
cp "$PREFIX"StudioProjects/ModControlRedesign/app/release/app-release.apk ModControlRedesign/

cd ../framework
cp "$FRAME_DIR"services.jar.out/dist/services.jar .
cp "$FRAME_DIR"framework.jar.out/dist/framework.jar .
cp "$FRAME_DIR"framework-res/dist/framework-res.apk .

cd ../
date=$(date +%m_%d_%y 2>&1)

echo $date > mod_version_mdy

cd ../
rm ../V20Mods_"$date".zip
zip -Z store -r ../V20Mods_"$date".zip *
