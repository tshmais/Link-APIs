Meta:
@User
@Login_User_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link

Scenario: Positive TC-001: Verify Login service using valid data for new LINK user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "Auto1@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
Then the service response should be: 200
And json response should equal:Positive_TC-001_Login_service

Scenario: Positive TC-002: Verify Login service using valid data for old LINK user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "14user@linkakc.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
Then the service response should be: 200
And json response should equal:Positive_TC-002_Login_service