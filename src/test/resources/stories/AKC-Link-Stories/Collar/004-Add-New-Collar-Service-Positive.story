Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 201
                                  
Scenario: Positive TC-001: Add Collar service by pass valid data for New Collar parameter
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa272@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 355
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "Generated-imei",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}
Then the service response should be: 201