# HOW TO USE THIS SCRIPT:
# - create local project (raw, without Git)
# - create GitHub repo (without any initial content)
# - note: project directory name and GitHub repo name must be identical
# - change into the project's directory
# - execute this script from the project's directory (the script will automatically determine the project's name)

PROJECT_NAME=`basename $PWD`

# after creating a GitHub repo (without any initial content), insert its URL here:
GITHUB_REPO="https://github.com/enji7/${PROJECT_NAME}.git"

# prepare local repo
git init
git add .
git commit -m "initial commit"

# rename branch
git branch -M main

# connect local with remote repo
git remote add origin $GITHUB_REPO
# verify remote repo
git remote -v

# push from local to remote
git push -u origin main
