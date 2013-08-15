#rawrful theme

RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
CYAN=$fg[cyan]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
CYAN_BOLD=$fg_bold[cyan]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY="%{$RED_BOLD%}∫"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}-"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}→"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}Δ"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}+"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE%}untracked"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}↑"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %b%{$WHITE%}[%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]%B"

# Prompt if ssh'd into another machine.
SSH=""
if [ -n "$SSH_CLIENT" ]; then
    SSH='%n@%m:'
fi

# Prompt format
PROMPT='%{$CYAN%}[$SSH%~%u]%(?.%{$fg[green]%}.%{$fg[red]%})%B\$%b '
RPROMPT='$(parse_git_dirty)%{$GREEN_BOLD%}$(current_branch)$(git_prompt_short_sha)$(git_prompt_status)%{$RESET_COLOR%}'
