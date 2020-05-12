. ~/.config/fish/aliases.fish
. ~/.config/fish/env.fish
. ~/.config/fish/user_function.fish

#set fish_color_hostname 'a67523'
set -gx fish_greeting ''
set openssl_path (brew --prefix openssl@1.1)
set PATH $HOME/go/bin /usr/local/opt/coreutils/libexec/gnubin /Users/usr0600397/.pyenv/shims ~/bin/ $PATH

# 見た目の設定
function fish_prompt
    set last_status $status

    #set user (whoami)

    #set_color magenta
    #printf '%s' $user
    #set_color normal
    #printf ' at '

    #set_color yellow
    #printf '%s' (hostname -s)
    #set_color normal
    #printf ' in '

    set_color $fish_color_cwd
    printf '%s' (echo $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||')
    set_color normal

    git_prompt
    virtualenv_prompt

    #set_color normal
    #printf ' (%s)' (date +%H:%M)
    #echo

    printf ' > '

    set_color normal
end

function fish_user_key_bindings
    bind \cg echo_git
    bind \c] select_ghq_cd
    bind \cs select_ghq_cd
end

rbenv init - | source
eval (direnv hook fish)
