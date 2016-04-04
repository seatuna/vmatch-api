#!/bin/bash

curl --include --request PATCH http://localhost:3000/change-password/1 \
  --header "Authorization: Token token=BAhJIiU3OTlmNGFiMDlmZTYxYjBhMjA5ODE5YjRmZDMzMjhkMAY6BkVG--ed3d2631294e9f654543122341b4cd02cf474e17" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "stillfishy",
      "new": "fishy"
    }
  }'
