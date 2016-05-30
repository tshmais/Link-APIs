Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 201
                                  
Scenario: Add New Collar service
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
And the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 355
And we set Body with {
    "imei" : "24634756734522{{$randomInt}}",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}
Then the service response should be: 201
And json path $.error.code should not exist.


