Meta:
@skip

Narrative:
In order to Create test data 
As a tester
I want to make sure all data created return the code 200


Scenario: Create User Profile for 5 user
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set DataSet Body with :
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
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

Examples:
|User_Email_Address|
|1userqa@LinkAKC.com|
|2userqa@LinkAKC.com|
|3userqa@LinkAKC.com|
|4userqa@LinkAKC.com|
|5userqa@LinkAKC.com|

Then the service response should be: 201

