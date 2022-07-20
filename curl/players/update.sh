#!/bin/bash
curl -X PUT \
  --header "Content-Type: application/json" \
  -d @./curl/players/update.json \
  http://localhost:3001/players/1 \
  | jq "."
