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
curl --request POST --header "Authorization: Token token=eafe876a2a0d8793018633bb154bc6a4" --header "Content-Type: application/json" -d '{
  "location": {
    "name":"Menton",
    "street_num":"33",
    "street":"Melcher",
    "city":"Boston"
  }
}'  http://localhost:3000/locations
```

curl --request PATCH --header "Authorization: Token token=eafe876a2a0d8793018633bb154bc6a4" --header "Content-Type: application/json" -d '{   "location": {      "name":"Victory Is Mine"   } }'  http://localhost:3000/locations/4

