Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 201 for POST scenarios and 200 for GET scenarios


Scenario: Positive TC-001: Add User Dog service by pass valid user and dog  parameters   
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

Scenario:Positive TC-002: Add User Dog service by pass valid same user data and same dog data parameters
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


Scenario:Positive TC-003: Add User Dog service by pass neutered "true" and valid dog data parameters
    
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

Scenario: Positive TC-004: Add User Dog service by pass neutered "false" and valid dog data parameters
  
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

Scenario: Positive TC-005: Add User Dog service by pass purebred "true" without breedId1 and breedId2 for valid dog data parameters
  
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

Scenario: Positive TC-006: Add User Dog service by pass purebred "true" without breedId1 with breedId2 for valid dog data parameters
   
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

Scenario: Positive TC-007: Add User Dog service by pass purebred "true" with breedId1 without breedId2 for valid dog data parameters
 
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

Scenario: Positive TC-008: Add User Dog service by pass purebred "true" with breedId1 and breedId2 for valid dog data parameters
   
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



Scenario: Positive TC-009: Add User Dog service by pass purebred "false" without breedId1 and breedId2 for valid dog data parameters
    
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

Scenario: Positive TC-010: Add User Dog service by pass purebred "false" without breedId1 with breedId2 for valid dog data parameters
 
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

Scenario: Positive TC-011: Add User Dog service by pass purebred "false" with breedId1 without breedId2 for valid dog data parameters
 
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

Scenario: Positive TC-012: Add User Dog service by pass purebred "false" with breedId1 and breedId2 for valid dog data parameters
   
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

Scenario: Positive TC-013: Add User Dog service by pass "akcRegistrationNo" with char for valid dog data parameters
    
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


Scenario: Positive TC-014: Add User Dog service by pass 25 for breed_id1_percentage  parameter
  
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

Scenario: Positive TC-015: Add User Dog service by pass 50 for breed_id1_percentage parameters
  
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

Scenario: Positive TC-016: Add User Dog service by pass 75 for breed_id1_percentage parameters
    
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


Scenario: Positive TC-017: Add User Dog service by pass 0 for Age parameters
  
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
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "false",
  "age": "0",
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

Scenario: Positive TC-018: Add User Dog service by pass 50 for Age parameters
 
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


Scenario: Positive TC-019: Add User Dog service by pass 25 for Age parameters
   
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


