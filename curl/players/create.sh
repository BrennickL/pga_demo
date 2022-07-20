#!/bin/bash
curl -X POST \
  --header "Content-Type: application/json" \
  -d @./curl/players/create.json \
  http://localhost:3001/players \
  | jq "."
