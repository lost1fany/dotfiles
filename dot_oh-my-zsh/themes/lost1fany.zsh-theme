# lost1fany.zsh-theme
# Author: lost.fany
# URL: http://lostfany.net

# PS1="%{$fg[blue]%}%~\$(git_prompt_info)\$(hg_prompt_info) %(?.%{$fg[green]%}.%{$fg[red]%})%(!.#.»)%{$reset_color%} "

PS1="%{$fg[blue]%}%~\$(git_prompt_info)\$(hg_prompt_info) %(?.%{$fg[green]%}.%{$fg[red]%})%(!.#.»)%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}(%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[cyan]%})%{$reset_color%}" 
