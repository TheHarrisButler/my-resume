#!/usr/bin/env bash

current_version=$UPGRADED_VERSION

# Split up version into an array using parameter expansion with regex
if [[ $current_version =~ ([0-9]+)\.([0-9]+)\.([0-9]+) ]]; then
  full_version="${BASH_REMATCH[0]}"
  major="${BASH_REMATCH[1]}"
  minor="${BASH_REMATCH[2]}"
  patch="${BASH_REMATCH[3]}"
fi

base="harris-resume"
extension="pdf"

target_dir=./dist/resume
target_file=(./dist/resume.pdf)

mkdir -p "${target_dir}"

full_version_filename="${base}v${full_version}.${extension}"
latest_version_filename="${base}.${extension}"

new_full_version_file="${target_dir}/${full_version_filename}"
cp "$target_file" "$new_full_version_file"

new_latest_version_file="${target_dir}/${latest_version_filename}"
cp "$target_file" "$new_latest_version_file"