# Simplistick ZSH Theme

START_GIT="%{$fg[white]%}(%{$fg[yellow]%}"
END_GIT="%{$fg[white]%})%{$reset_color%}"

PROMPT='
%{$fg[white]%}>%{$reset_color%} $START_GIT$(git_prompt_info) $(git_prompt_status)$(git_remote_status)$END_GIT %{$fg[green]%}%~%{$reset_color%}
%{$fg[$CARETCOLOR]%}%%%{$resetcolor%} '

PROMPT2='%{$fg[$CARETCOLOR]%}>%{$reset_color%} '

RPROMPT='%{$fg[magenta]%}$(date '+%T')%{$reset_color%}'

if [[ $USER == "root" ]]; then
  CARETCOLOR="red"
else
  CARETCOLOR="green"
fi

MODE_INDICATOR="%{$fg_bold[yellow]%}❮%{$reset_color%}%{$fg[yellow]%}❮❮%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
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
