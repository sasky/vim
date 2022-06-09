#!/usr/bin/bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-svelte coc-prettier coc-eslint coc-tabnine coc-spell-checker coc-marketplace coc-explorer coc-snippets coc-phpls coc-tsserver coc-html coc-css coc-json coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
# elm stuff 
npm install -g elm elm-test elm-format @elm-tooling/elm-language-server
