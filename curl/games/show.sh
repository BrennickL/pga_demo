#!/bin/bash
curl \
  http://localhost:3001/games/15 \
  | jq "."
