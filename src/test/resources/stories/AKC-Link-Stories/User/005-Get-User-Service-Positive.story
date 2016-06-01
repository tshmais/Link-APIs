Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 200


Scenario: Get User service
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa150@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}

And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User_service
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
And url contains the parameter: 286
Then the service response should be: 200
And json path $.id should equal:286
And json path $.version should equal:0
And json path $.name should equal:QA150
And json path $.emailAddress should equal:qa150@gmail.com
And json path $.phoneNo should equal:5535243
And json path $.cellNo should equal:5535243
And json path $.gender should equal:M
And json path $.timezone should equal:America/New_York
And json path $.locale should equal:en_US


