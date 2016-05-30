Meta:
ReportName Create_User_Service

Narrative:
In order to test Create_User service
As a tester
I want to make sure all return the code 201
                                  
Scenario: Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": null,
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 201