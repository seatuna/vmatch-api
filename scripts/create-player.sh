curl --include --request POST http://localhost:3000/players \
  --header "Authorization: Token token=BAhJIiU3OGYyZTBiMzkwMjdlNjljMGYzZDIyMWUwNzhhZTg0NQY6BkVG--3d4993bba6241c57d0e314baa66186a90f62d161" \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "name": "tj",
      "rank": "silver"
    },
    "selected_character": 8,
    "selected_opponent": 2,
  }'
