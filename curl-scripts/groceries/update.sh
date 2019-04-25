#!/bin/bash

curl "http://localhost:4741/groceries/${ID}" \
--request PATCH \
  --include \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "grocery": {
      "name": "'"${NAME}"'",
      "amount": "'"${AMNT}"'",
      "food_type": "'"${TYPE}"'"
    }
  }'

echo
