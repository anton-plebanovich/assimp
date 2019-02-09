#!/bin/bash

base_dir=$(dirname "$0")
cd "$base_dir"
cd "port/iOS"

# Build
bash build.sh --archs="arm64 x86_64"

# Archive
cd "/Users/antonplebanovich/Documents/Projects/assimp/lib/iOS"
rm libassimp-fat.7z
7z a libassimp-fat libassimp-fat.a

rm libIrrXML-fat.7z
7z a libIrrXML-fat libIrrXML-fat.a

# Copy to AssimpKit
cp libassimp-fat.7z "/Users/antonplebanovich/Documents/Projects/AssimpKit/AssimpKit/Assimp/lib/ios/libassimp-fat.7z"
cp libIrrXML-fat.7z "/Users/antonplebanovich/Documents/Projects/AssimpKit/AssimpKit/Assimp/lib/ios/libIrrXML-fat.7z"
