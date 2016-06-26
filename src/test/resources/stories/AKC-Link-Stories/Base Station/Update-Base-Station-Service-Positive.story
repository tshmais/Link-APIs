Scenario: Positive TC-001: Verify  Get all dogs for a user service using valid data  for New user
Given service method is post
When the service url is: Login_service
And add to the header Content-Type with value application/json
And we set Body with {
    "loginProvider" : "LINK",
    "loginProviderId" : "qa879@gmail.com",
    "password" : "P@ssw0rd",
    "token" : ""
}
And the service response should be: 200
And Retrieve json path $.access_token response
And service method is get
And the service url changes to: Get_User's_Dogs_service with 189
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal:[  
   {  
      "id":73,
      "version":0,
      "name":"Pucy985",
      "photo":"https://cdn.xyz.com/…..jpg",
      "gender":"M",
      "neutered":false,
      "description":"My dog Pucy",
      "age":4,
      "purebred":true,
      "dateOfBirth":"03-07-2013",
      "weight":8.9,
      "weightClass":"NA",
      "eyeColor":"BROWN",
      "akcRegistrationNo":"9",
      "accountId":189
   }
]