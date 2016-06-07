Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: Positive TC-001: service Get all dogs for a user by pass valid data for New user parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa818@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 406
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: Positive TC-002: service Get all dogs for a user by pass valid data for old user parameter

Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa4@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 2

And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200



Scenario: Positive TC-004: service Get all dogs for a user by pass valid data for user with multi dogs  parameter

Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa190@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 379
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario:Positive TC-005: service Get all dogs for a user by pass valid data for user with one dog  parameter

Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa499@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 407
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200


Scenario: Positive TC-007: service Get all dogs for a user by pass valid data for user without dogs parameter

Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa114@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 408
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200

