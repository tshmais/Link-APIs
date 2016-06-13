
Meta:
@ReportName Positive
@User
Narrative:
In order to test Login service
As a tester
I want to make sure all return the code 200
                                  
Scenario: Positive TC-001: Verify Login service using valid data for new LINK user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "r@r.com",
    "password": "P@ssw0rd",
    "loginProviderToken":""
}
Then the service response should be: 200


Scenario: Positive TC-002: Verify Login service using valid data for old LINK user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "r@r.com",
    "password": "P@ssw0rd",
    "loginProviderToken":""
}
Then the service response should be: 200


