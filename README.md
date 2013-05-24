Find Friends AR
==================


## criar user ##
	```
	curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://0.0.0.0:3000/api/v1/registrations -d "{\"user\":{\"email\":\"user3@example.com\",\"name\":\"anotheruser3\",\"password\":\"secret\",\"password_confirmation\":\"secret\",\"facebook_id\":\"1234\"}}"
	```

	e receber o Authorization, exemplo 93eMa9yQCAGeR7Rbq6rE 
## login ##
	curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/v1/sessions -d "{\"user\":{\"email\":\"user3@example.com\",\"password\":\"secret\"}}"
	
## criar poi ##
	curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Authorization: Token token="chZ3q8BbRxMmkXz5f7eC"' -X POST http://0.0.0.0:3000/api/v1/point_of_interest.json -d '{"poi":{"title":"task do user 1","facebook_id":"1234"} }'

### criar amizade ###
	curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Authorization: Token token="chZ3q8BbRxMmkXz5f7eC"' -X POST http://0.0.0.0:3000/api/v1/friendship.json -d '{"friendship":{"facebook_id":"1234","friend_facebook_id":"5678"} }'

### Get friends POI's ###
	curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -H 'Authorization: Token token="CZWz3gRCszp5hwBYgpxd"' -X GET http://0.0.0.0:3000/api/v1/point_of_interest.json -d '{"poi":{"facebook_id":"5678"} }'
