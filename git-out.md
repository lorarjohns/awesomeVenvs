# Git commands

## Delete a remote branch as well as its local counterpart

```{bash}
$ git push --delete <remote_name> <branch_name>
$ git branch -d <branch_name>
```

## Compare a local branch with a remote branch 

```{bash}
$ git diff <local branch> <remote>/<remote branch>
```

**Note:** This assumes you have a local branch that tracks a remote one, and your information is up to date.

## Checkout a local branch to track a remote

```{bash}
$ git checkout -b <branch_name>
```
Then:

```{bash}
$ git branch --set-upstream-to <remote_name> <branch_name>
``` 
or

```{bash}
$ git push -u <remote_name> <branch_name>
```
or
```{bash}
git push -u origin HEAD
```

## Update a local branch with remote information

```{bash}
$ git fetch <remote_name> <branch_name>
```

## Update a forked branch

Set upstream to the original that was forked:

```{bash}
$ git remote add upstream
```
Fetch data (`git fetch` fetches from origin by default)

```{bash}
$ git fetch upstream
```
