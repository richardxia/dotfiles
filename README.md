# Richard Xia's dotfiles

## Installation notes

These are things that need to be done once per new machine:

1. Install [vim-plug](https://github.com/junegunn/vim-plug):

    ``` sh
    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

    Then within Vim itself, run `:PlugInstall`.

    TODO: Switch to native Vim package manager once all my environments use Vim
    8.

2. Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm):

    ``` sh
    $ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```

## Upgrading

Just do a `git pull` and then run `./create_symlinks.sh`.
