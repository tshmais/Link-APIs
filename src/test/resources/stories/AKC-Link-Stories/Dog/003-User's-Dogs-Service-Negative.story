Meta:
@Dog
@Add_user_dog_Negative_scenarios
@Dog_Negative
@ReportName Dog_Negative
@Link

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 4xx for POST scenarios and 2xx for optinal parameter

Scenario: Negative TC-001: Verify  Add User Dog service using empty data  for name
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-001_Post_Dog_to_User_service


Scenario:Negative TC-002: Verify  Add User Dog service using empty data  for photo
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-002_Post_Dog_to_User_service





Scenario: Negative TC-005: Verify Add User Dog service using empty data  for age
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "",
  "age": "",
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
And json response should equal:Negative_TC-005_Post_Dog_to_User_service


Scenario: Negative TC-006: Verify  Add User Dog service using empty data  for breedSource
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-006_Post_Dog_to_User_service




Scenario: Negative TC-018: Verify  Add User Dog service using invalid data  for gender
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "*",
  "neutered": false,
  "age": 4,
  "breedSource": "",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0018_Post_Dog_to_User_service


Scenario: Negative TC-019: Verify  Add User Dog service using invalid data  for neutered
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "&*",
  "age": 4,
  "breedSource": "",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 400


Scenario: Negative TC-020: Verify  Add User Dog service using invalid data  for age
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": "*",
  "breedSource": "",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 400






Scenario: Negative TC-024: Verify  Add User Dog service using invalid data  for breed_id1_percentage
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "*",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}

Then the service response should be: 400



Scenario: Negative TC-025: Verify  Add User Dog service using invalid data  for description
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "#@",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-0025_Post_Dog_to_User_service


Scenario: Negative TC-026: Verify  Add User Dog service using invalid data  for dateOfBirth
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "00\00\00",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 400


Scenario: Negative TC-027: Verify  Add User Dog service using invalid data  for weight
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "75",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": "@",
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 400





Scenario: Negative TC-031: Verify  Add User Dog service using empty data  for all
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "",
  "photo": "",
  "gender": "",
  "neutered": "",
  "age": "",
  "breedSource": "",
  "breedId1": "",
  "breedId2": "",
  "breedId1Percentage": "",
  "unlistedBreedName": "",
  "description": "",
  "dateOfBirth": "",
  "weight": "",
  "eyeColor": "",
  "weightClass": "",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0031_Post_Dog_to_User_service


Scenario: Negative TC-032: Verify  Add User Dog service using invalid data  (-1,0,24, 26,49,51,74,76,60,100,255) for breed_id1_percentage
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "0",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0032_Post_Dog_to_User_service


Scenario: Negative TC-033: Verify  Add User Dog service using  invalid data (-1) for age
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "-1",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0033_Post_Dog_to_User_service


Scenario: Negative TC-034: Verify  Add User Dog service using invalid data  (51) for age
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "Pucy",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "age": 4,
  "breedSource": "Listed Breed",
  "breedId1": "1",
  "breedId2": "2",
  "breedId1Percentage": "51",
  "unlistedBreedName": "New Breed",
  "description": "My dog Pucy",
  "dateOfBirth": "2013-03-07",
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0034_Post_Dog_to_User_service
