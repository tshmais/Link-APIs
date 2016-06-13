Narrative:
In order to test Get User Service
As a tester
I want to make sure all return the code 4xx


Scenario: Negative TC-005: Get User data service by pass invalid data for 0 parameter
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
And json path $.errorDesc should equal:No Account exist for user 0.
add new lines

Scenario: Negative TC-006: Get User data service by pass invalid data for not exest parameter
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
And the service url changes to: Get_User_service with 109876
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 404
And json path $.errorDesc should equal:No Account exist for user 109876.
add new lines


Scenario: Negative TC-007: Get User data service by pass invalid data for * parameter
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
And the service url changes to: Get_User_service with *
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 400

add new lines