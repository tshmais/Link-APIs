Meta:
@User
@Create_User_Negative_scenarios
@User_Negative
@ReportName User_Negative
@Link

Narrative:
In order to test New_Collar service
As a tester
I want to make sure all return the code 4xx

Scenario: Negative TC-001: Verif Create User service using empty data  for name
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


Scenario: Negative TC-002: Verif Create User service using empty data  for email Address
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

Scenario: Negative TC-004: Verif Create User service using empty data  for gender
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

Scenario: Negative TC-005: Verif Create User service using empty data  for timezone
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

Scenario: Negative TC-006: Verif Create User service using empty data  for locale
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

Scenario: Negative TC-007: Verif Create User service using empty data  for loginProvider
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

Scenario: Negative TC-008: Verif Create User service using empty data  for loginProviderId
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

Scenario: Negative TC-009: Verif Create User service using empty data  for passwordText
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

Scenario: Negative TC-011: Verif Create User service using invalid data  for email Address
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


Scenario: Negative TC-013: Verif Create User service using invalid data  for gender
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

Scenario: Negative TC-014: Verif Create User service using invalid data  for timezone
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


Scenario: Negative TC-015: Verif Create User service using invalid data  for locale
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

Scenario: Negative TC-016: Verif Create User service using invalid data  for loginProvider
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

Scenario: Negative TC-017: Verif Create User service using invalid data  for loginProviderId
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

Scenario: Negative TC-018: Verif Create User service using invalid data  for passwordText
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


Scenario: Negative TC-020: Verif Create User service using invalid data  for all prameters 
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