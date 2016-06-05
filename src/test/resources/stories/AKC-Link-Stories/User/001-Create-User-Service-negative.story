Meta:
ReportName Create_User_Service_negative


Scenario: Negative TC-001: Create User service
 by pass empty data for name parameter

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


Scenario: Negative TC-002: Create User service
 by pass empty data for emailAddress parameter

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

Scenario: Negative TC-004: Create User service
by pass empty data for gender parameter
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

Scenario: Negative TC-005: Create User service
 by pass empty data for timezone parameter

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

Scenario: Negative TC-006: Create User service
 by pass empty data for locale parameter

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

Scenario: Negative TC-007: Create User service
by pass empty data for loginProvider parameter

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

Scenario: Negative TC-008: Create User service
by pass empty data for loginProviderId parameter

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

Scenario: Negative TC-009 Create User service
by pass empty data for passwordText parameter

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

Scenario: Negative TC-011: Create User service
by pass invalid data for emailAddress parameter

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


Scenario: Negative TC-013: Create User service
by pass invalid data for facebookUserId parameter

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

Scenario: Negative TC-014: Create User service
by pass invalid data for timezone parameter

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


Scenario: Negative TC-015 Create User service
 by pass invalid data for locale parameter
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

Scenario: Negative TC-016: Create User service
by pass invalid data for loginProvider parameter

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

Scenario: Negative TC-017: Create User service
by pass invalid data for loginProviderId parameter

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

Scenario: Negative TC-018: Create User service
by pass invalid data for passwordText parameter

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


Scenario: Negative TC-020: Create User service
 by pass empty data for ALL parameters

Given service method is post
When the service url is: Create_User_service
And add to the header Content-Type with value application/json
And we set Body with 
{
 "name": "",
 "emailAddress": "",
 "phoneNo": "",
 "cellNo": "",
 "facebookUserId": "",
 "gender": "",
 "timezone": "",
 "locale": "",
 "credentials": 
   {
    "loginProvider": "",
    "loginProviderId": "",
    "passwordText": "",
    "loginProviderToken": ""
   }
}
Then the service response should be: 409