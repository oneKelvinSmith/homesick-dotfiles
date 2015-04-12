function g
  git
end
function gst
  git status
end
function gd
  git diff
end
function gdc
  git diff --cached
end
function gdt
  git diff-tree --no-commit-id --name-only -r
end
function gl
  git pull
end
function gup
  git pull --rebase
end
function gp
  git push
end
function gd
  git diff
end
function gdv
    git diff -w $argv | view -
end
function gdt
  git difftool
end
function gc
  git commit -v
end
function gc!
  git commit -v --amend
end
function gca
  git commit -v -a
end
function gca!
  git commit -v -a --amend
end
function gcmsg
  git commit -m
end
function gco
  git checkout
end
function gcm
  git checkout master
end
function gr
  git remote
end
function grv
  git remote -v
end
function grmv
  git remote rename
end
function grrm
  git remote remove
end
function grset
  git remote set-url
end
function grup
  git remote update
end
function grbi
  git rebase -i
end
function grbc
  git rebase --continue
end
function grba
  git rebase --abort
end
function gb
  git branch
end
function gba
  git branch -a
end
function gbr
  git branch --remote
end
function gcount
  git shortlog -sn
end
function gcl
  git config --list
end
function gcp
  git cherry-pick
end
function glg
  git log --stat --max-count=10
end
function glgg
  git log --graph --max-count=10
end
function glgga
  git log --graph --decorate --all
end
function glo
  git log --oneline --decorate --color
end
function glog
  git log --oneline --decorate --color --graph
end
function gss
  git status -s
end
function ga
  git add
end
function gap
  git add --patch
end
function gm
  git merge
end
function grh
  git reset HEAD
end
function grhh
  git reset HEAD --hard
end
function gclean
  git reset --hard; and git clean -dfx
end
function gwc
  git whatchanged -p --abbrev-commit --pretty=medium
end
function gcs
  git commit -S
end
function gsps
  git show --pretty=short --show-signature
end
function gts
  git tag -s
end
function gvt
  git verify-tag
end
function gf
  git ls-files | grep
end
function gpoat
  git push origin --all; and git push origin --tags
end
function gmt
  git mergetool --no-prompt
end
function gg
  git gui citool
end
function gga
  git gui citool --amend
end
function gk
  gitk --all --branches
end
function gsts
  git stash show --text
end
function gsta
  git stash
end
function gstp
  git stash pop
end
function gstd
  git stash drop
end
function grt
  cd (git rev-parse --show-toplevel or echo ".")
end
function git-svn-dcommit-push
  git svn dcommit; and git push github master:svntrunk
end
function gsr
  git svn rebase
end
function gsd
  git svn dcommit
end
function current_branch
  set ref (git symbolic-ref HEAD 2> /dev/null) or \
  set ref (git rev-parse --short HEAD 2> /dev/null) or \
  return
  echo (echo $ref | sed '/s/refs\/head\//')
end
function current_repository
  set ref (git symbolic-ref HEAD 2> /dev/null) or \
  set ref (git rev-parse --short HEAD 2> /dev/null) or \
  return
  echo (git remote -v | cut -d':' -f 2)
end
function ggpull
  git pull origin (current_branch)
end
function ggpur
  git pull --rebase origin (current_branch)
end
function ggpush
  git push origin (current_branch)
end
function ggpnp
  git pull origin (current_branch); and git push origin (current_branch)
end
function _git_log_prettily
  if ! [ -z $argv[1] ]
      git log --pretty=$argv[1]
  end
end
function glp
  _git_log_prettily
end
function work_in_progress
  if git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"
      echo "WIP!!"
  end
end
function gwip
  git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--"
end
function gunwip
  git log -n 1 | grep -q -c "\-\-wip\-\-"; and git reset HEAD~1
end
function gignore
  git update-index --assume-unchanged
end
function gunignore
  git update-index --no-assume-unchanged
end
function gignored
  git ls-files -v | grep "^[[:lower:]]"
end
