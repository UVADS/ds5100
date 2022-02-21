### Instructions for Forking and Cloning a Repo     

**Follow these instructions if you don't have git:**  
1) To check if you have *git*, open a terminal and type `git`.    
If your screen doesn't fill with *git* commands, you don't have *git*.  

2) You can download *git* [here](https://git-scm.com/downloads)    
NOTE: *git* is a tool for version controlling software on a machine, while *GitHub* allows users to share software online.

**Follow these instructions if you don't have a GitHub account:**   
1) Create a GitHub account [here](https://github.com/)  
2) Create your GitHub personal access token. This will allow you to authenticate your machine and push updates to a repo.  

Steps:  
Settings (top right) -> Developer Settings -> Personal access tokens  
-> Generate New Token  -> save this token somewhere secure

**Forking and cloning a repo**  
Forking a repo will create a separate copy in your GitHub account.  
Cloning a repo will create a link whereby you can interact with the target repo.  
You will be able to push to and pull from the repo.

1) Select a repo you wish to fork and clone  
2) Fork the repo by clicking **fork** button at top right of repo page.  
This will create a separate copy of the repo in your account.  
3) Visit your account and find the copied course repo. Clone the repo to your personal machine.  
  
Steps for cloning:  
i. open a terminal (on Windows, Powershell is a fairly good terminal)  
ii. change directory to a path for your repo, using **cd** command.  
iii. from the forked repo in your GitHub account, click the green Code button and click the clipboard.  
iv. return to the terminal and type:  

`git clone [url]`  

where [url] is where you paste the url from the clipboard.  
this will clone the repo to your machine.  
if things worked correctly, you will find the directory structure at that path on your machine.  
