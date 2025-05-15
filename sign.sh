#!/bin/bash

# Path to the .xcframework
XCFRAMEWORK_PATH="Frameworks/TrustWalletCore.xcframework"

# Developer identity from your Keychain
IDENTITY="G8Q5XUAJD9"
codesign --force --sign "$IDENTITY" --timestamp --verbose $XCFRAMEWORK_PATH/ios-arm64/WalletCore.framework/WalletCore
codesign --force --sign "$IDENTITY" --timestamp --verbose $XCFRAMEWORK_PATH/ios-arm64_x86_64-simulator/WalletCore.framework/WalletCore
codesign --force --sign "$IDENTITY" --timestamp --verbose $XCFRAMEWORK_PATH/macos-arm64_x86_64/WalletCore.framework/Versions/A/WalletCore
codesign --force --sign "$IDENTITY" --timestamp --verbose $XCFRAMEWORK_PATH/ios-arm64_x86_64-maccatalyst/WalletCore.framework/Versions/A/WalletCore

codesign --force --sign "$IDENTITY" --deep --timestamp --verbose $XCFRAMEWORK_PATH

echo "All binaries signed."