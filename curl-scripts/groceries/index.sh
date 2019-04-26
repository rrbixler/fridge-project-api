#!/bin/bash

curl "http://localhost:4741/groceries" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
