# tests legit-show
# by Dion Earle (z5205292)

# tests that there must be a .legit directory
legit-show

legit-init

# tests that there must be commits made
legit-show

legit-add real.txt

# tests that even if the file is in the index, a commit must still be made
legit-show :real.txt

legit-commit -m "added a file"

# tests correct number of arguments are given
legit-show

# tests correct number of arguments are given
legit-show hello world

# tests the argument doesn't have a dash in front of it
legit-show -0:real.txt

#tests the argument has a semi-colon in it
legit-show test

# tests that the specified commit exists
legit-show test:

# tests that the specified commit exists
legit-show 1:

# tests the filename given is valid
legit-show :_file

# tests the filename given is valid
legit-show :-file

# tests the filename given is valid
legit-show :.file

# tests the filename given is valid
legit-show :

# tests that the file exists in the corresponding commit
legit-show 0:fake_file.txt

# tests that the file exists in the index
legit-show :fake_file.txt

# tests it works given correct commit and file
legit-show 0:real.txt

# tests it works given index and file
legit-show :real.txt
