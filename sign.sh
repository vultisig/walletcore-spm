#!/bin/bash

# Path to the .xcframework
XCFRAMEWORK_PATH="Frameworks/TrustWalletCore.xcframework"

# Developer identity from your Keychain
IDENTITY="G8Q5XUAJD9"

# Find and sign all binaries within the .xcframework
find "$XCFRAMEWORK_PATH" \( -name '*.dylib' -or -name '*.framework' -or -name '*.xcframework' \) -print0 | while IFS= read -r -d '' binary; do
    echo "Signing $binary"
    codesign --force --sign "$IDENTITY" --timestamp --options runtime "$binary"
done

echo "All binaries signed."