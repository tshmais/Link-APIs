Meta:
@ReportName Add_Collar_Positive_scenarios
@Collar_Positive
@ReportName Collar_Positive
@Collar
@Link





Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 201
                                  
Scenario: Positive TC-001: Verify  Add Collar service using valid data  for New Collar
Given Create new user
And Login with valid cridintials
And service method is post
When service url equal : Add_New_Collar_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
    "imei" : "Generated-imei",
    "hardwareVersion" : "DS5s60",
    "firmwareVersion" : "1.1"
}
Then the service response should be: 201
