# tests legit-init
# by Dion Earle (z5205292)

# tests correct arguments are given
legit-init hello

# tests return value is correct for error message
echo $?

# tests return value is correct for error message
legit-init a b c (^)

# tests return value is correct for error message
echo $?

# proves nothing already there
ls -d .legit

# tests it creates a repo
legit-init

# tests return value is correct for successful init
echo $?

# tests directory is now there
ls -d .legit

# tests it doesn't make it if already exists
legit-init

# tests return value is correct for error message
echo $?

legit-add new.txt

# tests adding a file doesn't impact how init runs
legit-init

legit-commit -m "added new file"

# tests making a commit doesn't impact how init runs
legit-init

rm -r .legit

# tests that if the .legit repository is no longer there init will work
legit-init

# tests return value is correct for successful init
echo $?
