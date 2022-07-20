#!/bin/bash
curl -X DELETE \
  http://localhost:3001/courses/1 \
  | jq "."
