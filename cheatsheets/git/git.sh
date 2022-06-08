# cd into repo
git init

hub create -d "$REPONAME"

# add the files in your new local repository. This stages them for the first commit.
git add .

# commit the files that you've staged in your local repository.
git commit -m 'First commit'

# add repo to git
git remote add origin https://github.com/alexchaichan/$REPONAME.git

# sets the new remote:
git remote -v

# push the changes in your local repository to GitHub. # master or origin
git push origin master

