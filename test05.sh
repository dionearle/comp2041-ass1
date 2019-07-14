# tests legit-commit's -a option
# by Dion Earle (z5205292)

# tests that it still can't commit if .legit doesn't exist
legit-commit -m "test"

# tests return value is correct for error message
echo $?

legit-init

# tests that it can't commit if there is no index within .legit
legit-commit -a -m "hello"

# tests return value is correct for error message
echo $?

legit-add real.txt

# tests the correct arguments are given
legit-commit -a "hello"

# tests return value is correct for error message
echo $?

# tests the correct arguments are given
legit-commit -m -a "hello"

# tests commit still works without the -a option
legit-commit -m "test"

# tests return value is correct for successful commit
echo $?

# tests that if you haven't updated any files it can't commit
legit-commit -a -m "nothing changed"

# tests return value for nothing to commit
echo $?

legit-add new.txt

# tests that committing regularly still works with -a option
legit-commit -a -m "added new.txt"

# tests return value for successful commit
echo $?

echo line2 >> new.txt

# tests that -a option updates index with contents of current directory
legit-commit -a -m "added an extra line to new.txt"

legit-show 1:new.txt

legit-show 2:new.txt
