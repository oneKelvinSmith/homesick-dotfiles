function gups
  git stash save pre-rebase
  git pull --rebase
  set stash (git stash list | grep pre-rebase)
  if test -n "$stash"
    git stash pop
  else
    echo "No local changes to pop"
  end
end
