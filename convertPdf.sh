#!/bin/bash
#
timestamp=$(date +%d%m%Y_%H%M)
output_file=output_$timestamp
#
pdftotext *pdf - > $output_file.txt
libreoffice --headless --convert-to docx $output_file.txt
#