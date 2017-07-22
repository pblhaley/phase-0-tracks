# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

 Version control is the way that git records all the changes that are made to a certain folder or file over the course of that folder or file's lifetime. It is super useful in dubugging because it allows you to see what changes are made and when they are made. Then you can go back and see when the problem started occurring and see what changes were made around that time that could have caused the bug.

* What is a branch and why would you use one?

 A branch is a working path that is (for lack of a better term) branched off of a base or master file. It is especially useful when working on a team or when working on several different problems at once so that person A can make a branch to work on problem A and person B can make a separate branch to work on problem B without stepping on each others toes. And at the end of the day they can commit their separate changes back to the master branch to update it.

* What is a commit? What makes a good commit message?

 A commit is the final step in the process to finalizing a change in a repository. When you commit a change it becomes a permanent (unless you decide to commit another change in the future that changes it) update in the repository. A good commit message is clear, concise, and descriptive. You want it to be specific so that you know exactly what changes you committed, but also short and sweet so you don't have to spend a bunch of time figuring out what you did. Also, if I'm not mistaken, I'm seeing a lot of example commit messages that speak in the present rather than the future...for example "Update version control definitions" is more appropriate that "Updated version control definitions".

* What is a merge conflict?

 A merge conflict occurs when changes are made in two different branches on the same line of code or when a person deletes some code that someone else is trying to edit. Then when you try to merge it into your current branch git doesn't know which change is correct and will prompt you with a merge confilct message.
