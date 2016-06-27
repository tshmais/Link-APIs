Meta:
@ReportName Positive
@Dog

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 201 for POST scenarios and 200 for GET scenarios


Scenario: Positive TC-001: Verify  Add User Dog service using valid user data  for and valid dog data  
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
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
And json response should equal:
{
  "id": 75,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario:Positive TC-002: Verify  Add User Dog service using valid same user data  for and valid same dog data
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
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
And json response should equal:
{
  "id": 75,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario:Positive TC-003: Verify Add User Dog service using neutered "true" for and valid dog data 
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "true",
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
And json response should equal:
{
  "id": 76,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": true,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario: Positive TC-004: Verify Add User Dog service using neutered "false" for and valid dog data 
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
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
And json response should equal:
{
  "id": 77,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario: Positive TC-005: Verify  Add User Dog service using  purebred "true" without breedId1 and breedId2 for and valid dog data
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
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
And json response should equal:
{
  "id": 78,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": true,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}


Scenario: Positive TC-006: Verify  Add User Dog service using purebred "true" without breedId1 with breedId2 for and valid dog data
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "true",
  "breedId1": "",
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
And json response should equal:
{
  "error": true,
  "errorCode": 0,
  "errorDesc": "Purebred dogs can have only one breedId."
}

Scenario: Positive TC-007: Verify Add User Dog service using purebred "true" with breedId1 without breedId2 for and valid dog data
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "true",
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
And json response should equal:
{
  "id": 79,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": true,
  "breedId1": 1,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario: Positive TC-008: Verify Add User Dog service using purebred "true" with breedId1 and breedId2 for and valid dog data   
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "true",
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
And json response should equal:
{
  "id": 80,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": true,
  "breedId1": 1,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario: Positive TC-009: Verify Add User Dog service using purebred "false" without breedId1 and breedId2 for and valid dog data    
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
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
And json response should equal:
{
  "id": 81,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario: Positive TC-010: Verify Add User Dog service using purebred "false" without breedId1 with breedId2 for and valid dog data
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "",
  "breedId2": "2",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
Then the service response should be: 201
And json response should equal:
{
  "id": 82,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId2": 2,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario:Positive TC-011: Verify Add User Dog service using purebred "false" with breedId1 without breedId2 for and valid dog data 
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
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
And json response should equal:
{
  "id": 83,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario: Positive TC-012: Verify Add User Dog service using purebred "false" with breedId1 and breedId2 for and valid dog data   
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
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
Then the service response should be: 201
And json response should equal:
{
  "id": 84,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "",
  "accountId": 191
}

Scenario: Positive TC-013: Verify Add User Dog service using  "akcRegistrationNo" with char for and valid dog data    
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": "abc12345"
}    
Then the service response should be: 201
And json response should equal:
{
  "id": 85,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "abc12345",
  "accountId": 191
}

Scenario: Positive TC-014:Verify Add User Dog service using 25 for breed_id1_percentage 
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "25",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": "12345"
} 
Then the service response should be: 201
And json response should equal:
{
  "id": 86,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "breed_id1_percentage": 25,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "12345",
  "accountId": 191
}

Scenario: Positive TC-015: Verify Add User Dog service using 50 for breed_id1_percentage   
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "50",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": "12345"
}
Then the service response should be: 201
And json response should equal:
{
  "id": 87,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "breed_id1_percentage": 50,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "12345",
  "accountId": 191
}

Scenario:Positive TC-016: Verify Add User Dog service using 75 for breed_id1_percentage     
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "2",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "75",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": "12345"
}   
Then the service response should be: 201
And json response should equal:
{
  "id": 89,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 2,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "breed_id1_percentage": 75,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "12345",
  "accountId": 191
}

Scenario: Positive TC-017: Verify Add User Dog service using 1 for Age
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "1",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "75",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": "12345"
} 
Then the service response should be: 201
And json response should equal:
{
  "id": 90,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 1,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "breed_id1_percentage": 75,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "12345",
  "accountId": 191
}

Scenario: Positive TC-018: Verify Add User Dog service using 50 for Age
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "50",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "75",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": "12345"
}    
Then the service response should be: 201
And json response should equal:
{
  "id": 91,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 50,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "breed_id1_percentage": 75,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "12345",
  "accountId": 191
}

Scenario: Positive TC-019: Verify Add User Dog service using 25 for Age  
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "25",
  "purebred": "false",
  "breedId1": "1",
  "breedId2": "2",
  "breed_id1_percentage": "75",
  "description": "$",
  "dateOfBirth": "03-07-2013",
  "weight": "8.9",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": "12345"
}
Then the service response should be: 201
And json response should equal:
{
  "id": 92,
  "version": 0,
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": false,
  "description": "$",
  "age": 25,
  "purebred": false,
  "breedId1": 1,
  "breedId2": 2,
  "breed_id1_percentage": 75,
  "dateOfBirth": "03-07-2013",
  "weight": 8.9,
  "weightClass": "ee",
  "eyeColor": "BROWN",
  "akcRegistrationNo": "12345",
  "accountId": 191
}
