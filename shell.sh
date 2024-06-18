#!/bin/bash

file_path="home/ec2-user/crontest"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
echo "this generated testfile." > "$file_path/file_$timestamp.txt"
echo "file created successfully at file_path/file_$timestamp.txt"
