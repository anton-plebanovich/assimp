#!/bin/bash

base_dir=$(dirname "$0")
cd "$base_dir"
cd "port/iOS"

bash build.sh --archs="arm64 x86_64"
