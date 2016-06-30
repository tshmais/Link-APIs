Meta:
@Dog
@Dog_Profile_Positive_scenarios
@Dog_Positive
@ReportName Dog_Positive
@Link

Narrative:
In order to test User's_Dogs service
As a tester
I want to make sure all return the code 200 for GET scenarios

Scenario: Positive TC-001: Verify  Get all dogs for a user service using valid data  for New user
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User's_Dogs_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-001_Get_User's_Dogs_service



Scenario: Positive TC-002: Verify  Get all dogs for a user service using valid data  for old user
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User's_Dogs_service with 168
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-002_Get_User's_Dogs_service


Scenario: Positive TC-004: Verify  Get all dogs for a user service using valid data  for user with multi dogs 
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User's_Dogs_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-004_Get_User's_Dogs_service



Scenario:Positive TC-005: Verify  Get all dogs for a user service using valid data  for user with one dog 
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User's_Dogs_service with 168

And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-005_Get_User's_Dogs_service



Scenario: Positive TC-007: Verify  Get all dogs for a user service using valid data  for user without dogs
Given Create new user
And Login with valid cridintials
And service method is get
When the service url equal: Get_User's_Dogs_service with 194
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-007_Get_User's_Dogs_service