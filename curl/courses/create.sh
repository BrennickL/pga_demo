#!/bin/bash
curl -X POST \
  --header "Content-Type: application/json" \
  -d @./curl/courses/create.json \
  http://localhost:3001/courses \
  | jq "."
