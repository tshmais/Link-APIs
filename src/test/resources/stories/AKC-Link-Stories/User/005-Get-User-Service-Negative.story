Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 4xx


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
And the service url changes to: Get_User_service with 0
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404
add new lines
