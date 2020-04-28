#!/bin/bash

# Make sure globstar is enabled
shopt -s globstar
# Get all JS files from src
for file in src/**/*.js; do # Whitespace-safe and recursive
	# Make sure the dist directory exists
	dirToMake=$(dirname $file)
	mkdir -p ${dirToMake/src/dist}

	# Run terser on each JS file
	relName=${file:4}
	npx terser "src/$relName" --output="dist/$relName"
    echo "$relName processed"
done

echo "JS processing complete"