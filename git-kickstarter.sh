# HOW TO USE THIS SCRIPT:
# * create local project (raw, without Git)
# * create GitHub repo (without any initial content)
#   * note: project directory name and GitHub repo name must be identical
# * change into the project's directory
# * execute this script from the project's directory 
#   * pass your GitHub username as command line parameter

if [ "$#" -ne 1 ]; then
    echo "Usage: /PATH/TO/git-kickstarter.sh <GITHUB_USERNAME>"
    exit 1
fi

# assemble GitHub repo URL
GITHUB_USERNAME=$1
PROJECT_NAME=`basename $PWD`
GITHUB_REPO="https://github.com/${GITHUB_USERNAME}/${PROJECT_NAME}.git"

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
