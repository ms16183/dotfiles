#!/bin/bash

echo "setup..."
echo ""

files=(.zshrc .zsh_profile)
for f in ${files[@]}; do
  ln -snfv ~/dotfiles/"$f" ~
done

echo ""
echo "done."
