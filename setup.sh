#!/bin/bash

echo "setup..."
echo ""

files=$(find . -maxdepth 1 -name ".*" -type f)
for f in ${files[@]}; do
  ln -snfv ~/dotfiles/"$f" ~
done

echo ""
echo "done."
