#!/bin/bash

# Corrected script using IFS to handle comma-separated numbers

input_file="numbers.txt"

while IFS=, read -r num; do
  echo "Processing number: $num"
  # Perform some operations with $num
  ((sum += num))
done < "$input_file"

echo "Sum of numbers: $sum"