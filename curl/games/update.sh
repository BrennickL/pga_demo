#!/bin/bash
curl -X PUT \
  --header "Content-Type: application/json" \
  -d @./curl/games/update.json \
  http://localhost:3001/games/15 \
  | jq "."
