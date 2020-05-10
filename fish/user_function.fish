function echo_git
  if test -z (commandline)
    if git rev-parse --show-toplevel > /dev/null 2>&1
      commandline 'git '
    end
  end
end

function git_prompt
    if git rev-parse --show-toplevel >/dev/null 2>&1
        set_color normal
        printf ' < '
        set_color magenta
        printf '%s' (git_current_branch)
        set_color green
        #git_prompt_status
        set_color normal
        printf ' >'
    end
end

function virtualenv_prompt
    if [ -n "$VIRTUAL_ENV" ]
        printf ' inside '
        set_color yellow
        printf '%s ' (basename "$VIRTUAL_ENV")
        set_color normal
    end
end

function git_current_branch -d 'Prints a human-readable representation of the current branch'
  set -l ref (git symbolic-ref HEAD ^/dev/null; or git rev-parse --short HEAD ^/dev/null)
  if test -n "$ref"
    echo $ref | sed -e s,refs/heads/,,
    return 0
  end
end

function select_ghq_cd
    commandline | read -l buffer
    ghq list --full-path | \
          sed -e "s|$HOME/||g" | \
          fzf --query "$buffer" | \
          read -l repository_path
    if test -n "$repository_path"
        commandline "cd ~/$repository_path"
        commandline -f execute
    end
    commandline -f repaint
end

function urlencode
  ruby -r cgi -e "puts CGI.escape(\""$1"\")"
end
