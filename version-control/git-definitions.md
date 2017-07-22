# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
It allows us to view the entire history of revisions to one or more files, and merge revisions made by different people. It's useful because it can allow us to have multiple save points, and roll back any issues if needed. It also allows multiple people to contribute to the code without it getting super messy!
* What is a branch and why would you use one?
A branch gives you a "copy" of your project to work on. That way you can more easily track changes, and you don't have to directly edit the "master" - which should remain pure.
* What is a commit? What makes a good commit message?
Commiting is done after all files are added to the stage point, to complete the save point for the project. A good commit message is detailed and states what was changed since the last commit, describing the save point for future reference.
* What is a merge conflict?
A merge conflict occurs when merging or pulling from a branch - Git will provide a message alerting us of the conflict. A merge conflict usually occurs when your current branch and the branch you want to merge into the current branch have diverged. That is, you have commits in your current branch which are not in the other branch, and vice versa.