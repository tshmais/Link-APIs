Meta:
@ReportName Positive
@Collar
@Link
@NegativeCollar
Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 4xx
    
Scenario: Negative TC-001: Verify  Add Collar service using empty data  for imei
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 409

Scenario: Negative TC-002: Verify  Add Collar service using empty data  for hardwareVersion
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
  "imei" : "Generated-imei",
    "hardwareVersion" : "",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 409


Scenario: Negative TC-003: Verify  Add Collar service using empty data  for firmwareVersion
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "Generated-imei",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : ""
}

Then the service response should be: 409



Scenario: Negative TC-004: Verify  Add Collar service using invalid data  for imei
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "@233%",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 409


Scenario: Negative TC-005: Verify  Add Collar service using invalid data  for hardwareVersion
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "123456788992",
    "hardwareVersion" : "%$",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 409


Scenario: Negative TC-006: Verify  Add Collar service using invalid data  for firmwareVersion
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {	
    "imei" : "123456788992",
    "hardwareVersion" : "123",
    "firmwareVersion" : "(^)"
}

Then the service response should be: 409
                                    
Scenario: Negative TC-008: Verify  Add Collar service using data  for Non consistent token with the id
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And add to the header Authorization with value 55dffa77-870e-4c81-bfaf-c147944f2d31
And we set Body with {
    "imei" : "24634756734522",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}

Then the service response should be: 401

Scenario: Negative TC-009: Verify  Add Collar service using empty data  for All parametes
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "loginProviderToken" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is post
And the service url changes to: Add_New_Collar_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "",
    "hardwareVersion" : "",
    "firmwareVersion" : ""
}

Then the service response should be: 409