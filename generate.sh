#!/bin/bash

# Get the language code from the argument, or default to 'ja' if none provided.
lang_code=${1:-ja}

# Check if the source files exist.
if [ ! -f source/default-ja.po ]; then
  echo "Error: source/default-ja.po not found."
  exit 1
fi

if [ ! -f source/$lang_code.po ]; then
  echo "Error: source/$lang_code.po not found."
  exit 1
fi

# Check if the output directory exists, and create it if necessary.
if [ ! -d output ]; then
  mkdir output
fi

# Merge default-ja.po and ja.po, prioritizing definitions from default-ja.po.
msgcat source/default-ja.po source/$lang_code.po -o output/$lang_code.po

# Compile the merged .po file to a .mo file.
msgfmt output/$lang_code.po -o output/$lang_code.mo

# Display a completion message.
echo "Merge and compilation completed. output/$lang_code.mo has been generated."
