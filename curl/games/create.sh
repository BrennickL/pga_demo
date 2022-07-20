#!/bin/bash
curl -X POST \
  --header "Content-Type: application/json" \
  -d @./curl/games/create.json \
  http://localhost:3001/games \
  | jq "."
