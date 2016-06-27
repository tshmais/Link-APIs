Meta:
@ReportName Positive
@Dog

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: Positive TC-001: Verify  Get all dogs for a user service using valid data  for New user
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
And service method is get
And the service url changes to: Get_User's_Dogs_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-001_Get_User's_Dogs_service



Scenario: Positive TC-002: Verify  Get all dogs for a user service using valid data  for old user

Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa1r@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 168

And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-002_Get_User's_Dogs_service


Scenario: Positive TC-004: Verify  Get all dogs for a user service using valid data  for user with multi dogs 

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
And service method is get
And the service url changes to: Get_User's_Dogs_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-004_Get_User's_Dogs_service



Scenario:Positive TC-005: Verify  Get all dogs for a user service using valid data  for user with one dog 

Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa1r@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 168

And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-005_Get_User's_Dogs_service



Scenario: Positive TC-007: Verify  Get all dogs for a user service using valid data  for user without dogs

Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto2@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 194
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-007_Get_User's_Dogs_service