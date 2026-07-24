#!/bin/bash

INPUT="urls.csv"

while IFS= read -r url; do

	dig +short "$url" 8.8.8.8 
	
done < "$INPUT" > nslkp_output.txt
