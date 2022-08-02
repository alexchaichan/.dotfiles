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

var=$(lynx --dump LINK_HERE_WITHOUT_QUOTES | grep ".*\.pdf$"  | awk '/http/{print $2}') | echo $var | for i in $(echo $var); do wget $i; done# download all pdfs fro a webpage
