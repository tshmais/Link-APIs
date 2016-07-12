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


Scenario: TC-001_DOG_Positive: Verify Add Dog service using valid user data for valid dog data


Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-001_Post_Dog_to_User_service


!-- Scenario:Positive TC-002: Verify Add User Dog service using valid same user data  for and valid same dog data
!-- Given Create new user
!-- And Login with valid cridintials
!-- And service method is post
!-- When service url equal :  Post_Dog_to_User_service
!-- And add to the header Content-Type with value application/json
!-- And add Session Authorization to Request header
!-- And we set Body with {
!--   "name": "ABC",
!--   "photo": "https://cdn.xyz.com/…..jpg",
!--   "gender": "M",
!--   "neutered": "false",
!--   "age": "2",
!--   "purebred": "false",
!--   "breedId1": "1",
!--   "breedId2": "",
!--   "breed_id1_percentage": "",
!--   "description": "$",
!--   "dateOfBirth": "03-07-2013",
!--   "weight": "8.9",
!--   "eyeColor": "BROWN",
!--   "weightClass": "ee",
!--   "akcRegistrationNo": ""
!-- }
!-- Then the service response should be: 201
!-- |--And json response should equal:Positive_TC-002_Post_Dog_to_User_service


Scenario: TC-003_DOG_Positive: Verify Add Dog service using "breedSource" as "Listed  Breed"  and Only breedId1 is entered
 
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-003_Post_Dog_to_User_service


Scenario: TC-004_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and Both breedId1 and breedId2 are provided
 
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}  
Then the service response should be: 201
|--And json response should equal:Positive_TC-004_Post_Dog_to_User_service


Scenario: TC-005_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 25

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "25",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
|--And json response should equal:Positive_TC-005_Post_Dog_to_User_service



Scenario: TC-006_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 50

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "50",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-006_Post_Dog_to_User_service


Scenario: TC-007_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 75

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "75",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
} 
Then the service response should be: 201
|--And json response should equal:Positive_TC-007_Post_Dog_to_User_service


Scenario: TC-008_DOG_Positive: Verify Add Dog service using "breedSource" as Listed  Breed"  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 25 and unlistedBreedName is "New Breed"
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "75",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-008_Post_Dog_to_User_service


!-- Scenario: Positive TC-009: TC-009_DOG_Positive: Verify Add Dog service using  and breedId1/breedId2/ are provided and breedId1Percentage is provided as 25 and unlistedBreedName is empty
!--     
!-- Given Create new user
!-- And Login with valid cridintials
!-- And service method is post
!-- When service url equal : Post_Dog_to_User_service
!-- And add to the header Content-Type with value application/json
!-- And add Session Authorization to Request header
!-- And we set Body with {
!--     "name" : "Pucy",
!--     "photo" : "https://cdn.xyz.com/…..jpg",
!--     "gender" : "M",
!--     "neutered" : false,
!--     "age" : 4,
!--     "breedSource": "listed breed",
!--     "breedId1" : "1",
!--     "breedId2" : "2",
!--     "breedId1Percentage" : "75",
!--     "unlistedBreedName": "New Breed",
!--     "description" : "My dog Pucy",
!--     "dateOfBirth" : "2015-12-08",
!--     "weight" : 8.9,
!--     "eyeColor" : "BROWN",
!--     "weightClass" : "NA",
!--     "akcRegistrationNo" : "ABC00123"
!-- } 
!-- Then the service response should be: 201
!-- |--And json response should equal:Positive_TC-009_Post_Dog_to_User_service


Scenario: TC-010_DOG_Positive: Verify Add Dog service using "breedSource" as Unlisted  Breed"  and only unListedBreedName is provided

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "Unlisted breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-0010_Post_Dog_to_User_service


Scenario:TC-011_DOG_Positive: Verify Add Dog service using "breedSource" as Unlisted  Breed"  and unListedBreedName/breedId1/breedId2 are provided 
 
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "Unlisted breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-0011_Post_Dog_to_User_service


Scenario: TC-012_DOG_Positive: Verify Add Dog service using "breedSource" as unknown  Breed"  and breedId1, breedId2, unListedBreedNam and breedId1Percentage are provided
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "1",
    "breedId2" : "2",
    "breedId1Percentage" : "75",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-0012_Post_Dog_to_User_service


Scenario: TC-013_DOG_Positive: Verify Add Dog service using "breedSource" as unknown  Breed"  and breedId1, breedId2, unListedBreedNam and breedId1Percentage are empty/null
    
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
|--And json response should equal:Positive_TC-0013_Post_Dog_to_User_service


Scenario: TC-014_DOG_Positive: Verify Add Dog service using  YYYY-MM-DD date format

Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
} 
Then the service response should be: 201
|--And json response should equal:Positive_TC-0014_Post_Dog_to_User_service


Scenario: TC-015_DOG_Positive: Verify Add Dog service using neutered  as false
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-0015_Post_Dog_to_User_service


Scenario: TC-016_DOG_Positive: Verify Add Dog service using neutered as true
   
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : true,
    "age" : 4,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}   
Then the service response should be: 201
|--And json response should equal:Positive_TC-0016_Post_Dog_to_User_service


Scenario: Positive TC-017: Verify Add User Dog service using 1 for Age
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 1,
    "breedSource": "unknown breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
} 
Then the service response should be: 201
|--And json response should equal:Positive_TC-0017_Post_Dog_to_User_service


Scenario: Positive TC-018: Verify Add User Dog service using 50 for Age
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 50,
    "breedSource": "unlisted breed",
    "breedId1" : "",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "New Breed",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}    
Then the service response should be: 201
|--And json response should equal:Positive_TC-0018_Post_Dog_to_User_service


Scenario: Positive TC-019: Verify Add User Dog service using 25 for Age  
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : 25,
    "breedSource": "listed breed",
    "breedId1" : "1",
    "breedId2" : "",
    "breedId1Percentage" : "",
    "unlistedBreedName": "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "2015-12-08",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : "ABC00123"
}
Then the service response should be: 201
|--And json response should equal:Positive_TC-0019_Post_Dog_to_User_service
