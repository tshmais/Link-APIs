Narrative:
In order to test Login service
As a tester
I want to make sure all return the code 200

                                 
Scenario: Positive TC-001: Verify  Get all dogs for a user service using valid data  for New user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Update_BaseStation
