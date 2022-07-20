#!/bin/bash
curl -X PUT \
  --header "Content-Type: application/json" \
  -d @./curl/courses/update.json \
  http://localhost:3001/courses/1 \
  | jq "."
