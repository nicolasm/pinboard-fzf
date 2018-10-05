function pbc
  jq -c '.[] | {description: .description, extended: .extended, tags: .tags, url: .href}' ~/Documents/Pinboard/Pinboard.json | fzf | jq -cr '.url' | xargs echo -n | xclip -selection clipboard
end
