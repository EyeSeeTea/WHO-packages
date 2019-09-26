#!/bin/bash

# USAGE: "./update-custom-form.sh NHWA\ Module\ 1\ \(Tu81BTLUuCT\).html"
FORM_FILE_NAME=$1

# Detect form uid by matching last string between parentheses
PARENTHESES_REGEX="(.*)\(([^)]+)\)(.*)"
echo $FORM_FILE_NAME
FORM_NAME=$(sed -r "s/$PARENTHESES_REGEX/\1/" <<< $FORM_FILE_NAME | xargs)
FORM_UID=$(sed -r "s/$PARENTHESES_REGEX/\2/" <<< $FORM_FILE_NAME | xargs)

echo "Updating $FORM_NAME with uid $FORM_UID"

# Update HTML code in DHIS2
http PUT "$DHIS2_URL/api/dataEntryForms/$FORM_UID" \
    Content-Type:application/json \
    "id"="$FORM_UID" \
    "name"="$FORM_NAME" \
    "htmlCode"=@"$FORM_FILE_NAME" \
    "style"="NONE"

http PUT "$DHIS2_URL/api/maintenance/cacheClear"
