# User authentication

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
    "password_confirmation": "an example password"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password"
  }
}' http://localhost:3000/login
```

## Logout

```
curl --request DELETE --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/logout/1
```

# Users

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

# Books

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/books
```

**OR**

```
curl http://localhost:3000/books
```

## Create

```
curl --request GET --header "Authorization: Token token=cf686e40f6eb4e2a98c720a4ef257bc3" --header "Content-Type: application/json" -d '{
  "beer": {
    "location_id":"4",
    "beer_id":"19"
  }
}'  http://localhost:3000/taps
```

curl --request DELETE --header "Authorization: Token token=bc77143ac8c03d3ae8deac7d06271497" --header "Content-Type: application/json" -d '{   "location": {      "name":"Victory Is Mine"   } }'  http://localhost:3000/locations/4

