#!/bin/bash


# This scripts sends an API call to the InvisiRisk GraphQL API, but returns a 422 status code. 
# This demonstrates policy based on the status code.
curl -i -X GET "https://api.invisirisk.com/graphql/projects?q="
