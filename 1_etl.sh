#!/bin/bash

FILE1="data1.csv"
FILE2="data2.csv"

OUTPUT="merged.csv"

head -n 1 "$FILE1" > clean_file1.csv
tail -n +2 "$FILE1" | sort | uniq >> clean_file1.csv

head -n 1 "$FILE2" > clean_file2.csv
tail -n +2 "$FILE2" | sort | uniq >> clean_file2.csv

head -n 1 clean_file1.csv > "$OUTPUT"
tail -n +2 clean_file1.csv >> "$OUTPUT"
tail -n +2 clean_file2.csv >> "$OUTPUT"

rm clean_file1.csv clean_file2.csv

echo "ETL process complete. Merged output saved to $OUTPUT"
