# merge files and put a blankline at the end of each file
cd in/to/dir/ ; for f in *.txt; do (cat "${f}"; echo) >> finalfile.txt; done; cd
