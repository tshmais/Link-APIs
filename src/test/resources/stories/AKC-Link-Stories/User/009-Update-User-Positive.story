Meta:
@User
@User_Profile_Positive_scenarios
@User_Positive
@ReportName User_Positive
@Link


Narrative:
In order to test Update User Service
As a tester
I want to make sure all return the code 2xx


Scenario: TC-001_USER_Negative: Verify Update User service using mismatching data in url and body for user ID

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "9",
    "name" : "testqa",
    "emailAddress" : "say12@ayyash.com",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"

}

Then the service response should be: 409


Scenario: TC-002_USER_Negative: Verify Update User service using mismatching data for version

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "LoginID",
    "name" : "testqa",
    "emailAddress" : "say12@ayyash.com",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "1"

}

Then the service response should be: 409

Scenario: TC-003_USER_Negative: Verify Update User service using empty value in for name

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "LoginID",
    "name" : "",
    "emailAddress" : "say12@ayyash.com",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"

}

Then the service response should be: 409


Scenario: TC-004_USER_Negative: Verify Update User service using empty value in for emailAddress

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "LoginID",
    "name" : "testqa",
    "emailAddress" : "",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"

}

Then the service response should be: 409


Scenario: TC-005_USER_Negative: Verify Update User service using empty value in for phoneNo

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "LoginID",
    "name" : "testqa",
    "emailAddress" : "say12@ayyash.com",
    "phoneNo" : "",
    "cellNo" : "877-555-1234",
    "facebookUserId" : "",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"

}

Then the service response should be: 200


Scenario: TC-006_USER_Negative: Verify Update User service using empty value in for cellNo

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "LoginID",
    "name" : "testqa",
    "emailAddress" : "say12@ayyash.com",
    "phoneNo" : "877-444-1234",
    "cellNo" : "",
    "facebookUserId" : "",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"

}

Then the service response should be: 200


Scenario: TC-007_USER_Negative: Verify Update User service using empty value in for facebookUserId

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "LoginID",
    "name" : "testqa",
    "emailAddress" : "say12@ayyash.com",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-444-1234",
    "facebookUserId" : "",
    "gender" : "M",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"

}

Then the service response should be: 200


Scenario: TC-008_USER_Negative: Verify Update User service using empty value in for gender

Given Create new user
And Login with valid cridintials
And service method is put
When service url equal : Update_User 
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And we set Body with 
{
 
    "id" : "LoginID",
    "name" : "testqa",
    "emailAddress" : "say12@ayyash.com",
    "phoneNo" : "877-444-1234",
    "cellNo" : "877-444-1234",
    "facebookUserId" : "",
    "gender" : "",
    "passcode" : "2683",
    "timezone" : "Etc/GMT-6",
    "locale" : "en_US",
    "version" : "0"

}

Then the service response should be: 200