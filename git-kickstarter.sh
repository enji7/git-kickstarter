# after creating a GitHub repo (without any initial content), insert its URL here:
GITHUB_REPO = "https://github.com/enji7/spring-demo-nodeps.git"

# prepare local git repo
git init
git add .
git commit -m "initial commit"

# connect local with remote git repo
git remote add origin $GITHUB_REPO

# push from local to remote
git push -u origin main

