#!/bin/bash
curl \
  http://localhost:3001/players/1 \
  | jq "."
