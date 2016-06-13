Meta:
@ReportName Positive
@User

Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 200


Scenario: Positive TC-001: Verify Get User data service using valid data for new LINK user
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
And the service url changes to: Get_User_service with 286
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json path $.id should equal:286
And json path $.version should equal:0
And json path $.name should equal:QA150
And json path $.emailAddress should equal:qa150@gmail.com
And json path $.phoneNo should equal:5535243
And json path $.cellNo should equal:5535243
And json path $.gender should equal:M
And json path $.timezone should equal:America/New_York
And json path $.locale should equal:en_US

add new lines


Scenario: Positive TC-002: Verify Get User data service using valid data for old LINK user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa2user@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User_service with 479
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json path $.id should equal:479
And json path $.version should equal:0
And json path $.name should equal:QAuser
And json path $.emailAddress should equal:qa2user@gmail.com
And json path $.phoneNo should equal:877-555-1234
And json path $.cellNo should equal:877-555-1234
And json path $.gender should equal:M
And json path $.timezone should equal:America/New_York
And json path $.locale should equal:en_US

add new lines

