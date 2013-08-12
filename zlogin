# adds the current branch name and colors it based on status
_git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "$(_bracket_wrap "$(_git_prompt_color ${ref#refs/heads/})")"
  fi
}

_git_prompt_color() {
  if [ -n "$1" ]; then
    current_git_status=$(_git_status)
    if [ "changed" = $current_git_status ]; then
      echo "$(_red $1)"
    elif [ "pending" = $current_git_status ]; then
      echo "$(_yellow $1)"
    elif [ "unchanged" = $current_git_status ]; then
      echo "$(_green $1)"
    elif [ "untracked" = $current_git_status ]; then
      echo "$(_cyan $1)"
    fi
  else
    echo "$1"
  fi
}

_git_status() {
  git_status=$(git status)
  if [ -n "$(echo $git_status | grep "Changes not staged")" ]; then
    echo "changed"
  elif [ -n "$(echo $git_status | grep "Changes to be committed")" ]; then
    echo "pending"
  elif [ -n "$(echo $git_status | grep "Untracked files")" ]; then
    echo "untracked"
  else
    echo "unchanged"
  fi
}

_color() {
  if [ -n "$1" ]; then
    echo "%{$fg_bold[$2]%}$1%{$reset_color%}"
  fi
}

_default_color() {
  if [ -n "$1" ]; then
    echo "%{$reset_color%}$1"
  fi
}

_separate()               { if [ -n "$1" ]; then echo " $1"; fi }
_grey()                   { echo "$(_default_color "$1")" }
_yellow()                 { echo "$(_color "$1" yellow)" }
_green()                  { echo "$(_color "$1" green)" }
_red()                    { echo "$(_color "$1" red)" }
_cyan()                   { echo "$(_color "$1" cyan)" }

_bracket_wrap()           { echo "$(_grey "[")$1$(_grey "]")" }
_basic()                  { echo "$(_user_name)$(_colored_path)" }
_colored_path()           { echo "$(_grey "%~")" }
_colored_git_branch()     { echo "$(_git_prompt_color "$(_git_prompt_info)")" }
_colored_git_difference() { echo "$(_yellow "$(_git_difference_from_track)")" }


# makes color constants available
autoload -U colors
colors

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

