#!/bin/bash
curl \
  http://localhost:3001/courses \
  | jq "."
