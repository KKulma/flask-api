## test GET calls 
http GET localhost:5000/recipes # httpie
curl -i -X GET localhost:5000/recipes  # curl

## test POST calls 
http POST localhost:5000/recipes name="Cheese Pizza" description="This is a lovely cheese pizza"
curl -i -X POST localhost:5000/recipes -H "Content-Type: application/json" -d '{"name":"Cheese Pizza", "description":"This is a lovely cheese pizza"}'

# test if a new recipe was posted correctly
http GET localhost:5000/recipes 
curl -i -X GET localhost:5000/recipes 

## test PUT call
http PUT localhost:5000/recipes/3 name="Lovely Cheese Pizza" description="This is a lovely cheese pizza recipe."
curl -i -X PUT localhost:5000/recipes/3 -H "Content-Type: application/json" -d '{"name":"Lovely Cheese Pizza", "description":"This is a lovely cheese pizza recipe."}'

# check the third recipe
http GET localhost:5000/recipes/3
curl -i -X GET localhost:5000/recipes/3 

## GET the reipe that doesn'r exist
http GET localhost:5000/recipes/101
curl -i -X GET localhost:5000/recipes/101 