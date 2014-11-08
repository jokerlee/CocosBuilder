#!/bin/sh

# This script is used by Xcode to copy the built app and plug-ins to the build directory

COCOSBUILDER_APP_BUILD_DIRECTORY=$1
COCOSBUILDER_REGULAR_DIRECTORY=$2
COCOSBUILDER_APP_BUNDLE=$3
COCOSBUILDER_CREATE_DIR=$4

if [ $COCOSBUILDER_CREATE_DIR == "1" ]
then
  mkdir -p "$COCOSBUILDER_REGULAR_DIRECTORY"
fi

echo "Copying $COCOSBUILDER_APP_BUNDLE into `cd \"$COCOSBUILDER_REGULAR_DIRECTORY\"; pwd`"

cp -r "$COCOSBUILDER_APP_BUILD_DIRECTORY$COCOSBUILDER_APP_BUNDLE" "$COCOSBUILDER_REGULAR_DIRECTORY"
