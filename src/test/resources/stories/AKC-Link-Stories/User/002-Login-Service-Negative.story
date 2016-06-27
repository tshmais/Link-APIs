Meta:
@NegativeUser
@ReportName Negative
@Link
@User

Narrative:
In order to test Login service
As a tester
I want to make sure all return the code 4xx
                                  
Scenario: Negative TC-001: Verify Login service using empty data  for loginProvider
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "", 
    "loginProviderId": "r@r.com",
    "password": "P@ssw0rd",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-001_Login_service


Scenario: Negative TC-002: Verify Login service using empty data  for loginProviderId
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "",
    "password": "P@ssw0rd",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-002_Login_service


Scenario: Negative TC-003: Verify Login service using empty data  for password
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "r@r.com",
    "password": "",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-003_Login_service


Scenario: Negative TC-005: Verify Login service using invalid data for loginProvider
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "#", 
    "loginProviderId": "r@r.com",
    "password": "P@ssw0rd",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-005_Login_service


Scenario: Negative TC-006: Verify Login service using invalid data for loginProviderId
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "#@..com",
    "password": "P@ssw0rd",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-006_Login_service


Scenario: Negative TC-007: Verify Login service using invalid data for password
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "r@r.com",
    "password": " ",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-007_Login_service

Scenario: Negative TC-009: Verify Login service using user data for user not exist
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "99x@r.com",
    "password": "PA@SWARD",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-009_Login_service


Scenario: Negative TC-010: Verify Login service using empty data for All paramters
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "", 
    "loginProviderId": "",
    "password": "",
    "loginProviderToken":""
}
Then the service response should be: 409
And json response should equal:Negative_TC-010_Login_service
