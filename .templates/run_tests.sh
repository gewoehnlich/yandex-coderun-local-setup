#!/bin/bash

if [ -z "$1" ]; then
    echo "Ошибка: необходимо передать file executable."
    echo "Например, для С++ ./file_binary или для Python python3 file.py"
    exit 1
fi

file_executable=$1

for dir in /tests/*/; do
    if [ -d "$dir" ]; then
        echo "🔎 Running test in $dir"
        input_file="${dir}input.txt"
        expected_file="${dir}expected_output.txt"
        output_file="${dir}output.txt"

        $file_executable < "$input_file" > "$output_file"
        if diff "$output_file" "$expected_file"; then
            echo "✅ Passed"
        else
            echo "❌ Failed"
        fi
        rm "$output_file"
    fi
done
