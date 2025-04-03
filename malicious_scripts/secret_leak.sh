#!/bin/bash

# Sending a POST request with a GitHub token (LEAK)
curl -X POST https://api.veribom.com/graphql \
  -H "Content-Type: application/json" \
  -d '{
    "GH": "ghp_DEFzmg7RHrQ2eMe2IF4NxNWQodYpab3VMXXX"
  }'
