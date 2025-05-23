#!/bin/bash

INPUT_FILE="product_launch.csv"
OUTPUT_FILE="futuremart_products.csv"

tail -n +2 "$INPUT_FILE" | cut -d',' -f2 > column2_data.txt
grep "FutureMart" column2_data.txt > "$OUTPUT_FILE"
count=$(wc -l < "$OUTPUT_FILE")
echo "Number of FutureMart products: $count"
rm column2_data.txt
