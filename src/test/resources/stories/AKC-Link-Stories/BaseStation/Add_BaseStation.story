Meta:
@Skip
Narrative:
In order to test Add Base service
As a tester
I want to make sure all return the code 201

Scenario: Positive TC-001: Verify  Add baseStaion service using valid user data  for and valid dog data  
Given Create new user
And Login with valid cridintials
And service method is post
When the service url equal: Add_BaseStation with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with {
   "macAddrId": "010101010100",
  "title": "Home Base",
  "latitude": "38.706863",
  "longitude": "-90.298205"
}
Then the service response should be: 201