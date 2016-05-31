Meta:
ReportName Create_User_Service_negative


Scenario: Negative-TC-001 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "",
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
Then the service response should be: 409


Scenario: Negative-TC-002 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "",
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
Then the service response should be: 409

Scenario: Negative-TC-004 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "",
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
Then the service response should be: 409

	Scenario: Negative-TC-005 Create User service
	Given service method is post
	When the service url is: Create_User_service
	And add to the header Content-Type with value application/json
	And we set Body with 
	{
	 "name": "User123",
	 "emailAddress": "Generated-Email",
	 "phoneNo": "877-555-1234",
	 "cellNo": "877-555-1234",
	 "facebookUserId": "",
	 "gender": "F",
	 "timezone": "",
	 "locale": "en_US",
	 "credentials": 
	   {
	    "loginProvider": "LINK",
	    "loginProviderId": "Generated-Email",
	    "passwordText": "P@ssw0rd",
	    "loginProviderToken": ""
	   }
	}
	Then the service response should be: 409

Scenario: Negative-TC-006 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: Negative-TC-007 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: Negative-TC-008 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: Negative-TC-009 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "F",
 "timezone": "America/New_York",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
   "loginProviderId": "Generated-Email",
    "passwordText": "",
    "loginProviderToken": ""
   }
}
Then the service response should be: 400

Scenario: Negative-TC-011 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "ABC#",
 "emailAddress": "#Generated-Email",
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
Then the service response should be: 409


Scenario: Negative-TC-013 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "#",
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
Then the service response should be: 409

Scenario: Negative-TC-014 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_Yorkm",
 "locale": "en_US",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409


Scenario: Negative-TC-015 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: Negative-TC-016 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK@",
    "loginProviderId": "Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: Negative-TC-017 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "#Generated-Email",
    "passwordText": "P@ssw0rd",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409

Scenario: Negative-TC-018 Create User service
Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "User123",
 "emailAddress": "Generated-Email",
 "phoneNo": "877-555-1234",
 "cellNo": "877-555-1234",
 "facebookUserId": "",
 "gender": "M",
 "timezone": "America/New_York",
 "locale": "en_USz",
 "credentials": 
   {
    "loginProvider": "LINK",
    "loginProviderId": "#Generated-Email",
    "passwordText": " ",
    "loginProviderToken": ""
   }
}
Then the service response should be: 400