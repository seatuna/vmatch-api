curl --include --request PATCH http://localhost:3000/players/1 \
  --header "Authorization: Token token=BAhJIiU3OGYyZTBiMzkwMjdlNjljMGYzZDIyMWUwNzhhZTg0NQY6BkVG--3d4993bba6241c57d0e314baa66186a90f62d161" \
  --header "Content-Type: application/json" \
  --data '{
    "player": {
      "name": "luckyd",
      "rank": "silver"
    }
  }'
