Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 4xx for POST scenarios and 2xx for optinal parameter

Scenario: Negative TC-001: Add User Dog service by pass empty data for name parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "",
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
    
Then the service response should be: 409

Scenario: Negative TC-002: Add User Dog service by pass empty data for photo parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-003: Add User Dog service by pass empty data for gender parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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


Scenario: Negative TC-004: Add User Dog service by pass empty data for neutered parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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

Scenario: Negative TC-005: Add User Dog service by pass empty data for age parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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

Scenario: Negative TC-006: Add User Dog service by pass empty data for purebred parameter 
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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

Scenario: Negative TC-007: Add User Dog service by pass empty data with purebred "true"for breedId1 , breedId2 parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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

Scenario: Negative TC-008: Add User Dog service by pass empty data with purebred "false"for breedId1 , breedId2 parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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

Scenario: Negative TC-009: Add User Dog service by pass empty data with purebred "false" and pass datat for breedId1 and 2 for breed_id1_percentage parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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

Scenario: Negative TC-010: Add User Dog service  by pass empty data for description parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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
    
Then the service response should be: 201

Scenario: Negative TC-011: Add User Dog service by pass empty data for dateOfBirth parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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
    
Then the service response should be: 400

Scenario: Negative TC-012: Add User Dog service by pass empty data for weight parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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
    
Then the service response should be: 201

Scenario: Negative TC-013: Add User Dog service by pass empty data for eyeColor parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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
    
Then the service response should be: 201

Scenario: Negative TC-014: Add User Dog service by pass empty data for weightClass parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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
  "eyeColor": "BROWN",
  "weightClass": "",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 201

Scenario: Negative TC-015: Add User Dog service by pass empty data for akcRegistrationNo parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "D123",
  "photo": "https://cdn.xyz.com/…..jpg",
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
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 201

Scenario: Negative TC-016: Add User Dog service by pass invalid data for name parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "22##@*&",
  "photo": "https://cdn.xyz.com/…..jpg",
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
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 409

Scenario: Negative TC-017: Add User Dog service by pass invalid data for photo parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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
  "breed_id1_percentage": "1",
  "description": "q",
  "dateOfBirth": "03-07-2013",
  "weight": "5",
  "eyeColor": "BROWN",
  "weightClass": "ee",
  "akcRegistrationNo": ""
}
    
Then the service response should be: 201


Scenario: Negative TC-018: Add User Dog service by pass invalid data for gender parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
And add to the header Content-Type with value application/json
And add Session Authorization to Request header

And we set Body with {
  "name": "ID",
  "photo": "",
  "gender": "#",
  "neutered": "false",
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
    
Then the service response should be: 409

Scenario: Negative TC-019: Add User Dog service by pass invalid data for neutered parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-020: Add User Dog service by pass invalid data for age parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-021: Add User Dog service by pass invalid data for purebred parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-022: Add User Dog service by pass invalid data for breedId1 parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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


Scenario:Negative TC-023: Add User Dog service by pass invalid data for breedId2 parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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


Scenario: Negative TC-024: Add User Dog service by pass invalid data for breed_id1_percentage parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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


Scenario: Negative TC-025: Add User Dog service by pass invalid data for description parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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


Scenario: Negative TC-026: Add User Dog service by pass invalid data for dateOfBirth parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-027: Add User Dog service by pass invalid data for weight parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-028: Add User Dog service by pass invalid data for eyeColor parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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


Scenario: Negative TC-029: Add User Dog service by pass invalid data for weightClass parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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


Scenario: Negative TC-030: Add User Dog service by pass invalid data for akcRegistrationNo parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-031: Add User Dog service by pass empty data for all parameter 
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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
    
Then the service response should be: 400


Scenario: Negative TC-032: Add User Dog service by pass invalid data for breed_id1_percentage parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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


Scenario: Negative TC-033: Add User Dog service by pass invalid data (-1) for age parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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

Scenario: Negative TC-034: Add User Dog service by pass invalid data  (51)for age parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa981@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Post_Dog_to_User_service with 401
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
