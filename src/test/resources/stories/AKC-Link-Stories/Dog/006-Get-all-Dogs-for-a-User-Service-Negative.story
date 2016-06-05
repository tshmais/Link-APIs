Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: Negative TC-001: service Get all dogs for a user by pass empty data for  parameter

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
And url contains the parameter: ""
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400
And json path $.error.code should not exist.

Scenario: Negative TC-002: service Get all dogs for a user by pass invalid data for  parameter


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
And url contains the parameter: @
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400
And json path $.error.code should not exist.

Scenario: Negative TC-003: service Get all dogs for a user by pass user not exist for  parameter

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
And url contains the parameter: 8199
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400
And json path $.error.code should not exist.

