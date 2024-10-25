#!/bin/bash

# Set the repository and the formula file
REPO="bizflycloud/bizflyctl"
FORMULA_FILE="./Formula/bizflyctl.rb"
LATEST_RELEASE=`curl -s https://api.github.com/repos/$REPO/releases/latest`

# Extract latest version, urls, and sha256
VERSION=$(echo "$LATEST_RELEASE" | grep -oP '"tag_name": "\K(.*)(?=")')
URL_MACOS=$(echo "$LATEST_RELEASE" | grep -oP '"browser_download_url": "\K(.*)(?=")' | grep "Darwin_all.tar.gz")
URL_LINUX_ARM=$(echo "$LATEST_RELEASE" | grep -oP '"browser_download_url": "\K(.*)(?=")' | grep "Linux_armv6.tar.gz")
URL_LINUX_ARM64=$(echo "$LATEST_RELEASE" | grep -oP '"browser_download_url": "\K(.*)(?=")' | grep "Linux_arm64.tar.gz")
URL_LINUX_X86_64=$(echo "$LATEST_RELEASE" | grep -oP '"browser_download_url": "\K(.*)(?=")' | grep "Linux_x86_64.tar.gz")

SHA256_MACOS=$(curl -Ls "$URL_MACOS" | sha256sum | awk '{print $1}')
SHA256_LINUX_ARM=$(curl -Ls "$URL_LINUX_ARM" | sha256sum | awk '{print $1}')
SHA256_LINUX_ARM64=$(curl -Ls "$URL_LINUX_ARM64" | sha256sum | awk '{print $1}')
SHA256_LINUX_X86_64=$(curl -Ls "$URL_LINUX_X86_64" | sha256sum | awk '{print $1}')

echo $FORMULA_FILE
# Update the formula file with the new version, urls, and sha256 values
sed -i  "s/version \".*\"/version \"$VERSION\"/" $FORMULA_FILE
sed -i  "s|url \".*Darwin_all.tar.gz\"|url \"$URL_MACOS\"|" $FORMULA_FILE
sed -i  "s/sha256 \".*\"/sha256 \"$SHA256_MACOS\"/" $FORMULA_FILE

sed -i  "s|url \".*Linux_armv6.tar.gz\"|url \"$URL_LINUX_ARM\"|" $FORMULA_FILE
sed -i  "s/sha256 \".*\"/sha256 \"$SHA256_LINUX_ARM\"/" $FORMULA_FILE

sed -i  "s|url \".*Linux_arm64.tar.gz\"|url \"$URL_LINUX_ARM64\"|" $FORMULA_FILE
sed -i  "s/sha256 \".*\"/sha256 \"$SHA256_LINUX_ARM64\"/" $FORMULA_FILE

sed -i  "s|url \".*Linux_x86_64.tar.gz\"|url \"$URL_LINUX_X86_64\"|" $FORMULA_FILE
sed -i  "s/sha256 \".*\"/sha256 \"$SHA256_LINUX_X86_64\"/" $FORMULA_FILE

echo "Formula file updated to version $VERSION"

