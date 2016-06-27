
Narrative:
In order to test Base Registration Status service
As a tester
I want to make sure all return the code 200
                                  
Scenario: Positive TC-100: Verify Base Registration Status service using valid data for associated user with one registered baseMacAddresses
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa1r@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Base_Registration_Status_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "baseMacAddresses": [
    "782350803411"
        ]
}
Then the service response should be: 200
And 

Scenario: Positive TC-101: Verify Base Registration Status service using valid data for unassociated user with one registered baseMacAddresses
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa1r@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Base_Registration_Status_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "baseMacAddresses": [
    "782350803413"
        ]
}
Then the service response should be: 200
