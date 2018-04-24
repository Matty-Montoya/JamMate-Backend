#!/bin/bash

curl --include --request PATCH "http://localhost:4741/instruments/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
    }
  }'
