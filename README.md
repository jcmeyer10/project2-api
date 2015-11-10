
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
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

**OR**

```
curl http://localhost:3000/users
```

## Create

```
curl --request POST --header 'Authorization: Token token="12a36c889c3182da7e0c22f7ba20d358"' --header "Content-Type: application/json" -d '{
  "beer": {
    "name":"UFO",
    "brewery":"Harpoon",
    "style":"Hefe"
  }
}'  http://localhost:3000/beers
```

curl --request POST --header "Authorization: Token token='123bd8ec5e416fc713a279cd58ac37b8' --header "Content-Type: application/json" -d '{
  "location": {
    "name":"Port 305"
  }
}'  http://localhost:3000/locations
