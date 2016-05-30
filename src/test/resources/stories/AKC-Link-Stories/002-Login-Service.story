Narrative:
In order to test Login service
As a tester
I want to make sure all return the code 200
                                  
Scenario: Login service
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider": "LINK", 
    "loginProviderId": "s@s.com",
    "password": "P@ssw0rd",
    "token":""
}
Then the service response should be: 200
And json path $.error.code should not exist.
