# Prompt format: # in DIRECTORY on git:BRANCH STATE [TIME] \n $

PROMPT='
# \
%{$fg[white]%}in \
%{$fg[blue]%}%~ \
$(git_prompt_info) \
%{$fg[cyan]%}[%*]
%{$reset_color%}%(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}on %{$fg[magenta]%}git:%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✓"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"

function _pyenv_prompt_info {
  [[ -n $(whence pyenv_prompt_info) ]] && \
  [[ "$(pyenv_prompt_info)" != "${PYENV_PROMPT_DEFAULT_VERSION}" ]] && \
  echo "${ZSH_THEME_PYENV_PROMPT_PREFIX}$(pyenv_prompt_info)${ZSH_THEME_PYENV_PROMPT_SUFFIX}"
}

ZSH_THEME_PYENV_PROMPT_PREFIX="%{$fg[yellow]%}python:%{$fg_bold[yellow]%}"
ZSH_THEME_PYENV_PROMPT_SUFFIX="%{$reset_color%}"

