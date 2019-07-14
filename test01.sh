# tests legit-add
# by Dion Earle (z5205292)

# tests that if .legit doesn't exist then add won't work
legit-add real.txt

legit-init

#tests correct arguments are given
legit-add

#tests that if a file doesn't exist it won't work
legit-add non-existent-file.txt

# should still be same with more than one fake file
legit-add non-existent-file1.txt non-existent-file2.txt

# should also not work with a fake file before a real file
legit-add non-existent-file.txt real-file.txt

# should still not work even if a real file is given first
legit-add real-file.txt non-existent-file.txt

# checking it works adding a single file
legit-add real.txt

# checking it works adding multiple files
legit-add real_1.txt 2-real.txt Real-3

# checking you can add the same file multiple times
legit-add real.txt

# tests that if an argument starts with a dash it won't work
legit-add -real.txt

# tests valid filenames are given
legit-add _real.txt

# tests valid filenames are given
legit-add .real.txt

# tests that all arguments must not have a dash
legit-add new.txt -real.txt

rm real.txt

# tests that if a file doesn't exist in the directory but is in the index, using legit-add will remove it from the index
legit-add real.txt
