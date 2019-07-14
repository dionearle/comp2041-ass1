# tests legit-commit
# by Dion Earle (z5205292)

# tests that it can't commit if .legit doesn't exist
legit-commit -m "test"

# tests return value is correct for error message
echo $?

legit-init

# tests correct arguments are given
legit-commit

# tests return value is correct for error message
echo $?

# tests correct arguments are given
legit commit hello

# tests correct arguments are given
legit-commit -m

# tests correct arguments are given
legit-commit -p hello

# tests that it can't commit if there is no index within .legit
legit-commit -m "test"

# tests return value is correct for error message
echo $?

legit-add real.txt

# tests that a regular commit works
legit-commit -m "message"

# tests return value is correct for successful commit
echo $?

# tests that if nothing has changed since last commit, will not work
legit-commit -m "haven't changed anything"

# tests return value for nothing to commit message
echo $?

legit-add anotherfile

# tests once we make a change compared to last commit it will work
legit-commit -m "message"

# again tests that if nothing changed shouldn't commit
legit-commit -m "message"
