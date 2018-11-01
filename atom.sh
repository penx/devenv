# Configure atom sync

apm install sync-settings api-blueprint-preview change-case css-hyperclick docblockr git-blame git-plus git-time-machine hyperclick js-hyperclick language-api-blueprint language-docker linter linter-eslint linter-ui-default nuclide nuclide-format-js pigments sort-lines var-that-color

echo "  \"sync-settings\":
    gistId: \"$GISTID\"
    personalAccessToken: \"$GISTTOKEN\"
" >> ~/.atom/config.cson
