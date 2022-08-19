#!/bin/sh

#########################################################################################
#
# Localizations import script from PO Editor
#
# This tool needs to be installed before running this script:
# https://stedolan.github.io/jq/
#
#########################################################################################

[[ -f $(which jq) ]] || { echo "Please install jq package: brew install jq"; exit 1; }

# PO Editor API access token
POEDITOR_API_TOKEN="d21e8444a4cd79d353691a041fb26f06"
# PO Editor project identifier
POEDITOR_PROJECT_ID="419735"
# Languages to be fetched from PO Editor
POEDITOR_LANGUAGES_VS_XCODE_FOLDERS=("fr->fr")
# Location where language files need to be parsed into
ROOT_LOCALIZATION_FOLDER="lib/l10n/"

for value in "${POEDITOR_LANGUAGES_VS_XCODE_FOLDERS[@]}"; do
currentLanguageCodePOEditor="${value%%->*}"
currentLangaugeCodeFlutter="${value##*->}"
outputfile=$ROOT_LOCALIZATION_FOLDER"intl_$currentLangaugeCodeFlutter.arb"

ARB_FILE=`curl -sb -X POST https://api.poeditor.com/v2/projects/export \
     -d api_token="$POEDITOR_API_TOKEN" \
     -d id="$POEDITOR_PROJECT_ID" \
     -d language="$currentLanguageCodePOEditor" \
     -d type="arb" | jq -r ".result.url"`

curl "$ARB_FILE" --output "$outputfile"

done