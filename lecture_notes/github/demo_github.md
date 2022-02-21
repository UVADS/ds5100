### Github workflow  

We will spend time in class on the following:  
1) forking a repo (this makes a copy in your GitHub account, which you can modify)  

We will fork the Apache Spark repo, which lives here:  
https://github.com/apache/spark

2) cloning the forked repo to local machine (this copies the fork to your local)
3) creating a new file locally and adding to version control (git add, git commit)
4) push the file back to GitHub (git push)
5) discuss how to get repo updates with git pull

---  

**Committing Files**  

First, to accomplish steps 3-5, it's preferable to use the command line.  
You'll want to open a terminal (in Windows, PowerShell is a good option).  
Let > denote the command prompt in terminal.

When you are ready to stage a file called file.txt for commit, enter:

`> git add file.txt`

Note that multiple files can be staged.  
When you are ready to commit your file(s), enter:  

`> git commit -m 'a message to describe what you are committing'`

where `-m` denotes a message flag; the message must be in single quotes

The committed files will now be tracked by `git`.

To push the file back to GitHub, enter:

`git push`

Note this will push the commit to the repo that you cloned.  
You should be able to now see the commit in the GitHub repo.  

---    

**Pulling changes with `git pull`**

When you want to sync your repo, you will use some form of `git pull` depending on how you wish to sync.

Suppose user **James** forked the spark repo and then cloned it.

The remote repos available can be seen with:

`> git remote -v`

This prints:  

origin  https://github.com/James/spark.git (fetch)  
origin  https://github.com/James/spark.git (push)

This is the forked repo. To pull from this repo, enter:  

`> git pull origin`

or more simply:

`> git pull`  

Note that `> git push` pushes to the repo listed above.  

**How can you pull from the original repo?**  

First we briefly list all steps, and then explain details.  

```
> git remote add upstream https://github.com/apache/spark.git
> git fetch upstream
> git merge upstream/main main
```

**Details:**  

1) Add the original repo (the one you forked) as a remote.

`> git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git`  

Specifically for this example the command is:  

`> git remote add upstream https://github.com/apache/spark.git`  

You can check that this upstream repo has been added with:  

`> git remote -v`

This will show:  
origin  https://github.com/James/spark.git (fetch)  
origin  https://github.com/James/spark.git (push)  
upstream        https://github.com/apache/spark.git (fetch)  
upstream        https://github.com/apache/spark.git (push)  

2) Fetch the updates

`> git fetch upstream`

3) Lastly, merge the updates:  

`> git merge upstream/main main`

If the merge fails, you likely altered your repo. Git will give suggestions on how to fix a merge conflict.
