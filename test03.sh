# tests legit-log
# by Dion Earle (z5205292)

# tests that there must be a .legit directory to show the log
legit-log

# tests return value is correct for error message
echo $?

legit-init

# tests that there must be commits made to view the log
legit-log

# tests return value is correct for error message
echo $?

legit-add real.txt

legit-commit -m "first commit"

# tests correct arguments are given
legit-log hello

# tests return value is correct for error message
echo $?

# tests correct arguments are given
legit-log hello world

# tests correct arguments are given
legit-log -test

#tests it works with a single commit
legit-log

# tests return value is correct when log succeeds
echo $?

legit-add new.txt

legit-commit -m "added another file"

# tests it works with multiple commits and in correct order
legit-log

echo hello > another.txt

legit-add another.txt

# tests that it only updates the log when a new commit has been made
legit-log
