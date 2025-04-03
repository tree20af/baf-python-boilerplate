#!/bin/bash
# This request should send 422 status code.
curl -i -X GET "https://api.veribom.com/graphql/projects?q="
