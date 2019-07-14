# tests legit-rm
# by Dion Earle (z5205292)

# tests that files cannot be removed without a .legit repository
legit-rm

legit-init

# tests that commits must be made before removing a file
legit-rm

legit-add real.txt

# tests that even if the file is in the index, a commit must still be made
legit-rm

legit-commit -m "added real.txt"

# tests correct arguments are given
legit-rm

# tests correct arguments are given
legit-rm --force

# tests correct arguments are given
legit-rm --cached

# tests correct arguments are given
legit-rm --force --cached

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --cached --force

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --cached --force file.txt

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --force test --force

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --cached test --force

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --cached --cached test

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --force test -test

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --cached test -file

# tests that it doesn't work if arguments have a dash in front of them
legit-rm --force --cached test -hello

# tests the filename given is valid
legit-rm _file

# tests the filename given is valid
legit-rm .file

# tests that the file exists in the index
legit-rm fakefile.txt

# tests that the force option removes the file from index and dir
legit-rm --force file1

# tests that both options remove the file from index
legit-rm --force --cached file1

# tests that cached option removes the file from index
legit-rm --cached file1

# tests that no option removes the file from index and dir
legit-rm file1
