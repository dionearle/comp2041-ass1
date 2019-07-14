# further tests legit-status's implementation
# by Dion Earle (z5205292)

legit-init

legit-add real.txt

legit-commit -m "added a real file"

# tests that if a file in directory is same as repository, status is same as repo
legit-status

echo 123 > new.txt

# tests if a file isn't in the index or repository, status is untracked
legit-status

legit-rm real.txt

# tests that if a file is deleted from the index and the directory, status is deleted
legit-status

legit-add new.txt

legit-commit "added new file"

rm new.txt

# tests that if a file is deleted only from the directory, status is file deleted
legit-status

echo test > hello.txt

legit-add hello.txt

# tests that if a file is added to the index, status is added to index
legit-status

legit-commit -m "third commit"

echo newline >> hello.txt

# tests that if a file is changed yet not added, status is changes not staged for commit
legit-status

legit-add hello.txt

# tests that if a file is changed and added to index, status is changed staged for commit
legit-status

echo another new line >> hello.txt

# tests that if file is different in directory, index and repository, status is different changes staged for commit
legit-status
