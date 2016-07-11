Meta:
@Dog
@Add_user_dog_Positive_scenarios
@Dog_Positive
@ReportName Dog_Positive
@Link

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 201 for POST scenarios and 200 for GET scenarios


Scenario: Positive TC-001: Verify  Add User Dog service using valid user data  for and valid dog data  
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
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-001_Post_Dog_to_User_service


Scenario:Positive TC-002: Verify  Add User Dog service using valid same user data  for and valid same dog data
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal :  Post_Dog_to_User_service
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
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-002_Post_Dog_to_User_service


Scenario:Positive TC-003: Verify Add User Dog service using neutered "true" for and valid dog data 
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
  "neutered": true,
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
|--And json response should equal:Positive_TC-003_Post_Dog_to_User_service


Scenario: Positive TC-004: Verify Add User Dog service using neutered "false" for and valid dog data 
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
  "weight": 8.9,
  "eyeColor": "BROWN",
  "weightClass": "NA",
  "akcRegistrationNo": "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-004_Post_Dog_to_User_service

