#!/bin/bash

curl "http://localhost:4741/groceries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "grocery": {
      "name": "'"${NAME}"'",
      "amount": "'"${AMNT}"'",
      "food_type": "'"${TYPE}"'"
      "user_id": "'"${USERID}"'"
    }
  }'

echo
