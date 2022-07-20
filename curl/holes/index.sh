#!/bin/bash
curl \
  http://localhost:3001/courses/1/holes \
  | jq "."
