# tests legit-status
# by Dion Earle (z5205292)

# tests that status cannot be shown without a .legit repository
legit-status

# tests return value is correct for error message
echo $?

legit-init

# tests that there must be commits made
legit-status

# tests return value is correct for error message
echo $?

legit-add real.txt

# tests that even if the file is in the index, a commit must still be made
legit-status

# tests return value is correct for error message
echo $?

legit-commit -m "added a file"

# tests that status still works with added arguments
legit-status hello world

# tests return value is correct successful status
echo $?

# tests that status still works with added arguments
legit-status a

# tests that status still works with added arguments
legit-status a b c d e f g

legit-status
