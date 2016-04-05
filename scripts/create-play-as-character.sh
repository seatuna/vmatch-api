curl --include --request POST http://localhost:3000/play_as_characters \
  --header "Authorization: Token token=BAhJIiU3OGYyZTBiMzkwMjdlNjljMGYzZDIyMWUwNzhhZTg0NQY6BkVG--3d4993bba6241c57d0e314baa66186a90f62d161" \
  --header "Content-Type: application/json" \
  --data '{
    "play_as_character": {
      "player_id": 1,
      "character_id": 11
    }
  }'
