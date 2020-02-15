# Simplistick ZSH Theme

PROMPT='
%{$fg[white]%}>%{$reset_color%} $(_git_prompt_info)%{$fg[green]%}%~%{$reset_color%}
%{$fg[$CARETCOLOR]%}%%%{$resetcolor%} '

PROMPT2='%{$fg[$CARETCOLOR]%}>%{$reset_color%} '

RPROMPT='%{$fg[magenta]%}$(date '+%T')%{$reset_color%}'

if [[ $USER == "root" ]]; then
  CARETCOLOR="red"
else
  CARETCOLOR="green"
fi

function _git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/} $(git_prompt_status)$(git_remote_status)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

MODE_INDICATOR="%{$fg_bold[yellow]%}❮%{$reset_color%}%{$fg[yellow]%}❮❮%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%})%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="M"
ZSH_THEME_GIT_PROMPT_DELETED="X"
ZSH_THEME_GIT_PROMPT_RENAMED="R"
ZSH_THEME_GIT_PROMPT_UNMERGED="?"
ZSH_THEME_GIT_PROMPT_UNTRACKED="U"


# LS colors, made with https://geoff.greer.fm/lscolors/
export LSCOLORS="exgxxxxxCxxxxxCxCxxcad"
export LS_COLORS='di=34:ln=36:so=0:pi=0:ex=1;32:bd=0:cd=0:su=1;32:sg=1;32:tw=0;42:ow=30;43'
export GREP_COLOR='1;33'
