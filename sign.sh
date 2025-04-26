#!/bin/bash

# Path to the .xcframework
XCFRAMEWORK_PATH="Frameworks/WalletCoreCommon.xcframework"

# Developer identity from your Keychain
IDENTITY="G8Q5XUAJD9"
codesign --force --sign "$IDENTITY" --deep --timestamp --verbose $XCFRAMEWORK_PATH

echo "All binaries signed."