Narrative:
In order to test Login service
As a tester
I want to make sure all return the code 409
                                  
Scenario: Negative-TC-001 Login service 
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

Scenario: Negative-TC-002 Login service 
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

Scenario: Negative-TC-003 Login service 
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

Scenario: Negative-TC-005 Login service 
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

Scenario: Negative-TC-006 Login service 
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

Scenario: Negative-TC-007 Login service 
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

Scenario: Negative-TC-009 Login service 
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

Scenario: Negative-TC-010 Login service 
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