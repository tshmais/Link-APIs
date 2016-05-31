Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 201 for POST scenarios and 200 for GET scenarios


Scenario: Add Dog To User service    
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
And service method is post
And the service url changes to: Post_Dog_to_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 286
And we set Body with {
    "name" : "Pucy",
    "photo" : "https://cdn.xyz.com/…..jpg",
    "gender" : "M",
    "neutered" : false,
    "age" : "4",
    "purebred" : true,
    "breedId1" : "",
    "breedId2" : "",
    "breed_id1_percentage" : "",
    "description" : "My dog Pucy",
    "dateOfBirth" : "03-07-2013",
    "weight" : 8.9,
    "eyeColor" : "BROWN",
    "weightClass" : "NA",
    "akcRegistrationNo" : 9
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
And service method is get
And url contains the parameter: 286
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json path $.error.code should not exist.
