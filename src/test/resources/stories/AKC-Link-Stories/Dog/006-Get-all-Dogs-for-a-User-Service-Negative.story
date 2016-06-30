Meta:
@Dog
@Dog_Profile_Negative_scenarios
@Dog_Negative
@ReportName Dog_Negative
@Link


Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 4XX for GET scenarios


Scenario: Negative TC-002: Verify  Get all dogs for a user service using invalid data  for  user parameter
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal:Get_User's_Dogs_service with *
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400
And json response should equal:


Scenario: Negative TC-003: Verify  Get all dogs for a user service using user not exist  for  user parameter
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User's_Dogs_service with 8199
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404
And json response should equal:
{
  "error": true,
  "errorCode": 0,
  "errorDesc": "No Account exist for user 8199."
}

Scenario:Negative TC-004: Verify  Get all dogs for a user service using user have no access for  user parameter
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User's_Dogs_service with 36
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 403
And json response should equal:
{
  "error": true,
  "errorCode": 0,
  "errorDesc": "Access is denied"
}

