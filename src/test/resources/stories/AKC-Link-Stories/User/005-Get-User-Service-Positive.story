Meta:
@skip


Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 200


Scenario: Positive TC-001: Verify Get User data service using valid data for new LINK user

Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-001_Get_User_service


Scenario: Positive TC-002: Verify Get User data service using valid data for old LINK user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "14user@linkakc.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User_service with 111
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-002_Get_User_service