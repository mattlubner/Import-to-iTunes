#!/bin/bash

permitted_file_extensions="mov|mp4|m4v|mpg|mpeg|m2v|mp2|ite|aac|m4a|m4b|m4p|mp3|caf|aiff|aif|aifc|au|sd2|wav|snd|amr|3ga"

eval "active_library="$(defaults read com.apple.iApps iTunesRecentDatabases)
printf -v active_library '%b' "${active_library[0]//%/\\x}"
active_library="${active_library#file://localhost}"
if [[ ! -e "$active_library" ]]; then
	exit 1
fi

function url_encode_for_itunes()
{
	local encoded="$(perl -MURI::Escape -e 'print uri_escape($ARGV[0]);' "${1}")"
	encoded="${encoded//\%2F//}"
	encoded="${encoded//\%28/(}"
	encoded="${encoded//\%29/)}"
	encoded="${encoded//\%27/\'}"
	encoded="${encoded//\%2C/,}"
	REPLY="${encoded}"
}

function filter_existing_itunes_media_files()
{
	# If stdin is a directory...
	if [[ -d "$1" ]]; then
		
		# Check all files having the permitted file extensions
		find "$1" -depth 1 -type f | grep -E -i "\.($permitted_file_extensions)$" | sort | while read path
		do
		    filter_existing_itunes_media_files "$path"
		done
		
		# Recurse into directories
		find "$1" -depth 1 -type d | while read path
		do
		    filter_existing_itunes_media_files "$path"
		done
		
	# Else, if stdin is a file...
	elif [[ -f "$1" ]]; then
		url_encode_for_itunes "$1"
		grep -q "${REPLY}" "$active_library" &>/dev/null || echo -e "$1"
	fi
}

while read path
do
    filter_existing_itunes_media_files "$path"
done