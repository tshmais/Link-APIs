Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 201
                                    
Scenario: Add New Collar service (Negative Scenario - Non consistent token with the id)
Given service method is post
When the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And add to the header Authorization with value 55dffa77-870e-4c81-bfaf-c147944f2d31
And url contains the parameter: 396
And we set Body with {
    "imei" : "24634756734522",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 403

