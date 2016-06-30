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
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
And json response should equal:Negative_TC-001_Post_Dog_to_User_service


Scenario:Negative TC-002: Verify  Add User Dog service using empty data  for photo
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-002_Post_Dog_to_User_service


Scenario: Negative TC-003: Verify  Add User Dog service using empty data  for gender
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-003_Post_Dog_to_User_service


Scenario:Negative TC-004: Verify  Add User Dog service using empty data  for neutered
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
|--And json response should equal:Negative_TC-004_Post_Dog_to_User_service


Scenario: Negative TC-005: Verify Add User Dog service using empty data  for age
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
And json response should equal:Negative_TC-005_Post_Dog_to_User_service


Scenario: Negative TC-006: Verify  Add User Dog service using empty data  for purebred
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "",
  "breedId1": "1",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
And json response should equal:Negative_TC-006_Post_Dog_to_User_service


Scenario:Negative TC-007: Verify  Add User Dog service using empty data with purebred "true" for breedId1 , breedId2
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "true",
  "breedId1": "",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 201
|--And json response should equal:Negative_TC-007_Post_Dog_to_User_service


Scenario: Negative TC-008: Verify  Add User Dog service using empty data with purebred "false" for breedId1 , breedId2
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-008_Post_Dog_to_User_service

Scenario: Negative TC-009:Verify Add User Dog service using empty data with purebred "false" and pass data for breedId1 and 2 for breed_id1_percentage
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
And json response should equal:Negative_TC-009_Post_Dog_to_User_service


Scenario: Negative TC-010: Verify  Add User Dog service using empty data  for description
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
And json response should equal:Negative_TC-0010_Post_Dog_to_User_service


Scenario: Negative TC-011: Verify  Add User Dog service using empty data  for dateOfBirth
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
And json response should equal:Negative_TC-0011_Post_Dog_to_User_service


Scenario: Negative TC-012: Verify  Add User Dog service using empty data  for weight
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
And json response should equal:Negative_TC-0012_Post_Dog_to_User_service


Scenario: Negative TC-013: Verify  Add User Dog service using empty data  for eyeColor
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409
And json response should equal:Negative_TC-0013_Post_Dog_to_User_service


Scenario: Negative TC-014: Verify Add User Dog service using empty data for weightClass
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "25",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
|--And json response should equal:Negative_TC-0014_Post_Dog_to_User_service


Scenario: Negative TC-015: Verify Add User Dog service using empty data for akcRegistrationNo
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 201
And json response should equal:Negative_TC-0015_Post_Dog_to_User_service


Scenario: Negative TC-016: Add User Dog service by pass invalid data for name parameter
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "22##@*&",
  "photo": "https://cdn.xyz.com/�..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}  
Then the service response should be: 201
And json response should equal:Negative_TC-0016_Post_Dog_to_User_service


Scenario: Negative TC-017: Verify  Add User Dog service using invalid data  for photo
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "M",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}    
Then the service response should be: 201
|--And json response should equal:Negative_TC-0017_Post_Dog_to_User_service


Scenario: Negative TC-018: Verify  Add User Dog service using invalid data  for gender
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": ")",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}  
Then the service response should be: 409
And json response should equal:Negative_TC-0018_Post_Dog_to_User_service


Scenario: Negative TC-019: Verify  Add User Dog service using invalid data  for neutered
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "@",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}   
Then the service response should be: 400


Scenario: Negative TC-020: Verify  Add User Dog service using invalid data  for age
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "#$",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 400


Scenario: Negative TC-021: Verify  Add User Dog service using invalid data  for purebred
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "#$",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 400


Scenario: Negative TC-022: Verify  Add User Dog service using invalid data  for breedId1
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "#",
  "breedId2": "2",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 400


Scenario:Negative TC-023: Verify  Add User Dog service using invalid data  for breedId2
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "@",
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
} 
Then the service response should be: 400



Scenario: Negative TC-024: Verify  Add User Dog service using invalid data  for breed_id1_percentage
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "^",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 400



Scenario: Negative TC-025: Verify  Add User Dog service using invalid data  for description
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "#",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 201
|--And json response should equal:Negative_TC-0025_Post_Dog_to_User_service


Scenario: Negative TC-026: Verify  Add User Dog service using invalid data  for dateOfBirth
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "t",
  "dateOfBirth": "00/00/00",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 400


Scenario: Negative TC-027: Verify  Add User Dog service using invalid data  for weight
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "t",
  "dateOfBirth": "03-07-2013",
  "weight": "#",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
} 
Then the service response should be: 400


Scenario: Negative TC-028: Verify  Add User Dog service using invalid data  for eyeColor
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "t",
  "dateOfBirth": "03-07-2013",
  "weight": "3",
  "eyeColor": "*",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
And json response should equal:Negative_TC-0028_Post_Dog_to_User_service


Scenario: Negative TC-029: Verify  Add User Dog service using invalid data  for weightClass
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "t",
  "dateOfBirth": "03-07-2013",
  "weight": "3",
  "eyeColor": "BROWN",
  "weightClass": "%",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
And json response should equal:Negative_TC-0029_Post_Dog_to_User_service


Scenario: Negative TC-030: Verify  Add User Dog service using invalid data  for akcRegistrationNo
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "t",
  "dateOfBirth": "03-07-2013",
  "weight": "3",
  "eyeColor": "BROWN",
  "weightClass": "5",
  "akcRegistrationNo": "#$"
}
Then the service response should be: 400
And json response should equal:Negative_TC-0030_Post_Dog_to_User_service


Scenario: Negative TC-031: Verify  Add User Dog service using empty data  for all
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "",
  "photo": "",
  "gender": "",
  "neutered": "",
  "age": "",
  "purebred": "",
  "breedId1": "",
  "breedId2": "",
  "breed_id1_percentage": "",
  "description": "",
  "dateOfBirth": "",
  "weight": "",
  "eyeColor": "",
  "weightClass": "",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
And json response should equal:Negative_TC-0031_Post_Dog_to_User_service


Scenario: Negative TC-032: Verify  Add User Dog service using invalid data  (-1,0,24, 26,49,51,74,76,60,100,255) for breed_id1_percentage
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "5",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "24",
  "description": "t",
  "dateOfBirth": "03-07-2013",
  "weight": "3",
  "eyeColor": "BROWN",
  "weightClass": "5",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
And json response should equal:Negative_TC-0032_Post_Dog_to_User_service


Scenario: Negative TC-033: Verify  Add User Dog service using  invalid data (-1) for age
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "-1",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "t",
  "dateOfBirth": "03-07-2013",
  "weight": "3",
  "eyeColor": "BROWN",
  "weightClass": "5",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
And json response should equal:Negative_TC-0033_Post_Dog_to_User_service


Scenario: Negative TC-034: Verify  Add User Dog service using invalid data  (51) for age
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "F",
  "neutered": "false",
  "age": "66",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "t",
  "dateOfBirth": "03-07-2013",
  "weight": "3",
  "eyeColor": "BROWN",
  "weightClass": "5",
  "akcRegistrationNo": ""
}
Then the service response should be: 409
And json response should equal:Negative_TC-0034_Post_Dog_to_User_service
