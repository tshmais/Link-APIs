Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 201
    
Scenario: Negative TC-001: Add Collar service by pass empty data for imei parameter

Given service method is post
When the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And url contains the parameter: 396
And we set Body with {
    "imei" : "",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 403 

Scenario: Negative TC-002: Add Collar service by pass empty data for hardwareVersion parameter


Given service method is post
When the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And url contains the parameter: 396
And we set Body with {
    "imei" : "24634756734522",
    "hardwareVersion" : "",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 403 


Scenario: Negative TC-003: Add Collar service by pass empty data for firmwareVersion parameter

Given service method is post
When the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And url contains the parameter: 396
And we set Body with {
    "imei" : "24634756734522",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : ""
}

Then the service response should be: 403 



Scenario: Negative TC-004: Add Collar service by pass invalid data for imei parameter


Given service method is post
When the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And url contains the parameter: 396
And we set Body with {
    "imei" : "@233%",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 403 





Scenario: Negative TC-005: Add Collar service by pass invalid data for hardwareVersion parameter


Given service method is post
When the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And url contains the parameter: 396
And we set Body with {
    "imei" : "123456788992",
    "hardwareVersion" : "%$",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 403 


Scenario: Negative TC-006: Add Collar service
 by pass invalid data for firmwareVersion parameter



Given service method is post
When the service url changes to: Add_New_Collar_service
And add to the header Content-Type with value application/json
And url contains the parameter: 396
And we set Body with {	
    "imei" : "123456788992",
    "hardwareVersion" : "123",
    "firmwareVersion" : "(^)"
}

Then the service response should be: 403 
                                    
Scenario: Negative TC-008: Add Collar service by pass data for Non consistent token with the id parameter

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

