#!/bin/bash
curl \
  http://localhost:3001/players \
  | jq "."
