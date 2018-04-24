#!/bin/bash

curl "http://localhost:4741/instruments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "instrument": {
      "instrument": "'"${INSTRUMENT}"'",
      "genre": "'"${GENRE}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
