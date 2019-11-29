#!/bin/bash

files_relative_path="$1/*.yaml";
files_true_path="$PWD/$files_relative_path"

for file in $files_true_path; do
    kubectl apply -f $file
done