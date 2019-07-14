# further tests on legit-rm's implementation
# by Dion Earle (z5205292)

legit-init

echo line1 > new.txt

legit-add new.txt

legit-commit -m "added new file"

echo line2 >> new.txt

legit-add new.txt

# tests that you cannot remove if a change is staged in the index
legit-rm new.txt

# tests return value is correct for error message
echo $?

echo line3 >> new.txt

# tests that you cannot remove if the index file is different to both directory and repository
legit-rm new.txt

# tests return value is correct for error message
echo $?

# tests that this is still an error with the cached option
legit-rm --cached new.txt

# tests return value is correct for error message
echo $?

legit-add new.txt

# tests you still cannot remove the file with no options
legit-rm new.txt

# tests return value is correct for error message
echo $?

# tests the cached option allows you to remove the file
legit-rm --cached new.txt

# tests return value is correct for successful remove
echo $?

legit-add new.txt

legit-commit -m "updated file"

echo line4 >> new.txt

# tests that if the file in directory is different to repository it cannot remove
legit-rm new.txt

# tests return value is correct for error message
echo $?
