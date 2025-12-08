#!/usr/bin/env bash

__DIR__="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

ln -fs "${__DIR__}/.oh-my-zsh/themes/af-magic-mine.zsh-theme" "${HOME}/.oh-my-zsh/themes/"
ln -fs "${__DIR__}/.bash_aliases" "${HOME}/"
ln -fs "${__DIR__}/.bash_profile" "${HOME}/"
ln -fs "${__DIR__}/.env" "${HOME}/.env.mine"
ln -fs "${__DIR__}/.gitconfig" "${HOME}/"
ln -fs "${__DIR__}/.gitignore_global" "${HOME}/"

zshrc="${HOME}/.zshrc"

mv ${zshrc} "${HOME}/.zshrc.bkp"

ln -fs "${__DIR__}/.zshrc" ${zshrc}

echo -e "Done! Now, reload your shell :)"
