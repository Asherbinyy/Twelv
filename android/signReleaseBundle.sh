#!/bin/bash

echo $PATH
echo $JAVA_HOME

FILE="app-prod-release.aab"
FILEPATH=$(find . -name $FILE | grep outputs)
[[ -f $FILEPATH ]] || { echo "File $FILEPATH doesn't exist"; exit 1; }

KEYSTORE="production.jks"
KEYSTOREPATH=$(find . -name $KEYSTORE)
[[ -f $KEYSTOREPATH ]] || { echo "File $KEYSTOREPATH doesn't exist"; exit 1; }

[[ -x "$(command -v zip)" ]] || { echo "zip command is needed"; exit 1; }

echo "Cleaning bundle..."
#https://medium.com/codespace69/you-uploaded-an-apk-that-is-not-zip-aligned-error-b0ad3b155506
zip -d $FILEPATH META-INF/\*

echo "Running signing action..."
jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 -keystore $KEYSTOREPATH -storepass "$1" -keypass "$2" $FILEPATH "$3"

