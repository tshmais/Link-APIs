Meta:
@User
@User_Profile_Positive_scenarios
@ReportName User_Positive
@User_Positive
@Link

Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 200


Scenario: Positive TC-001: Verify Get User data service using valid data for new LINK user
GivenStories: stories/AKC-Link-Stories/User/test.story
Given service method is get
When the service url changes to: Get_User_service with 191
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:Positive_TC-001_Get_User_service