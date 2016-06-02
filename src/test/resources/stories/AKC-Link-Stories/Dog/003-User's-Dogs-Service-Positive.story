Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 201 for POST scenarios and 200 for GET scenarios


Scenario: TC-001 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-002 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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


Scenario: TC-003 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
And we set Body with {
  "name": "ABC",
  "photo": "https://cdn.xyz.com/…..jpg",
  "gender": "M",
  "neutered": "True",
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

Scenario: TC-004 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-005 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-006 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-007 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-008 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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



Scenario: TC-009 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-010 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-011 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-012 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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

Scenario: TC-013 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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


Scenario: TC-014 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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
  "akcRegistrationNo": "abc12345"
}
    
Then the service response should be: 201

Scenario: TC-015 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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
  "akcRegistrationNo": "abc12345"
}
    
Then the service response should be: 201

Scenario: TC-016 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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
  "akcRegistrationNo": "abc12345"
}
    
Then the service response should be: 201


Scenario: TC-017 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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
  "akcRegistrationNo": "abc12345"
}
    
Then the service response should be: 201

Scenario: TC-018 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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
  "akcRegistrationNo": "abc12345"
}
    
Then the service response should be: 201


Scenario: TC-019 Add User Dog service    
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
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 401
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
  "akcRegistrationNo": "abc12345"
}
    
Then the service response should be: 201



Scenario: Get all Dogs for a User service
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa150@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And the service url changes to: Get_User's_Dogs_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 41
And service method is get
Then the service response should be: 200
And json node is id for 0 order should equal:22
And json node is version for 0 order should equal:0
And json node is deleted for 0 order should equal:false
And json node is name for 0 order should equal:DogsTest
And json node is gender for 0 order should equal:M
And json node is neutered for 0 order should equal:false
And json node is age for 0 order should equal:4
And json node is purebred for 0 order should equal:true
And json node is breedId1 for 0 order should equal:null
And json node is breedId2 for 0 order should equal:null
And json node is breed_id1_percentage for 0 order should equal:null
And json node is description for 0 order should equal:My Dogs Test
And json node is dateOfBirth for 0 order should equal:03-07-2013
And json node is weight for 0 order should equal:8.9
And json node is weightClass for 0 order should equal:N/A
And json node is eyeColor for 0 order should equal:BROWN
And json node is akcRegistrationNo for 0 order should equal:9
And json node is accountId for 0 order should equal:41