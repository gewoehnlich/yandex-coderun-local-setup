#!/bin/bash

if [ -z "$1" ]; then
    echo "Ошибка: необходимо передать file executable."
    echo "Например, для С++ ./file_binary или для Python python3 file.py"

file_executable = $1

for dir in "$SCRIPT_DIR"/*/; do
    if [ -d "$dir" ]; then
        file_executable < tests/$dir.txt
do
  echo "Running test case $i"
  ./5 < tests/input$i.txt > output$i.txt
  diff output$i.txt tests/expected_output$i.txt && echo "✅ Passed" || echo "❌ Failed"
done

