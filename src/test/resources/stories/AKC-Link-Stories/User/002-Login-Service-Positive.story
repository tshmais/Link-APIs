Narrative:
In order to test Login service
As a tester
I want to make sure all return the code 200
                                  
Scenario: Positive-TC-001 Login service 
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
And json path $.error.code should not exist.

Scenario: Positive-TC-002 Login service 
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
And json path $.error.code should not exist.
