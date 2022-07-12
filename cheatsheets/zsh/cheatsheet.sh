# merge files and put a blankline at the end of each file
cd in/to/dir/ ; for f in *.txt; do (cat "${f}"; echo) >> finalfile.txt; done; cd

# unite / merge pdfs * means all files in this dir
pdfunite ~/path/to/directorie/* ~/new_file.pdf

# zip
zip -r FILENAME.zip /PATH/TO/DIR/*

# unzip

# split file by lines into smaller files
split -l n /path/to/file

# change extension name
for f in *; do mv -- "$f" "${f}.extension"; done
