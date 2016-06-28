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
And json response should equal:
{
  "access_token": "abafa63e-3d2c-453c-92bf-0b83c1e3f037",
  "token_type": "bearer",
  "refresh_token": "757e960e-e0b5-40c6-a8b9-e96d4a401043",
  "expires_in": 31535824,
  "scope": "read write",
  "userId": 191
}


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
And json response should equal:
{
  "access_token": "c82cb0d9-d038-4173-8201-2d082eb56d55",
  "token_type": "bearer",
  "refresh_token": "afa8671d-c896-40d5-b349-5a0d62e422a5",
  "expires_in": 30950204,
  "scope": "read write",
  "userId": 111
}