Meta:
@ReportName Negative
@Dog

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 4XX for GET scenarios


Scenario: Negative TC-002: Verify  Get all dogs for a user service using invalid data  for  user parameter
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
And service method is get
And the service url changes to: Get_User's_Dogs_service with *
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400


Scenario: Negative TC-003: Verify  Get all dogs for a user service using user not exist  for  user parameter
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
And service method is get
And the service url changes to: Get_User's_Dogs_service with 8199
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404
And json path $.errorDesc should equal:No Account exist for user 8199.




Scenario:Negative TC-004: Verify  Get all dogs for a user service using user have no access for  user parameter

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
And service method is get
And the service url changes to: Get_User's_Dogs_service with 36
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403
And json path $.errorDesc should equal:Access is denied 

