Scenario: Positive TC-001: Verify  Get all dogs for a user service using valid data  for New user
GivenStories: path/to/stories/002-Login-Service-Positive.story
Given service method is get
When the service url equal: Get_User's_Dogs_service with 58
And add to the header Content-Type with value application/json
And add Session Authorization to Request header
Then the service response should be: 200
And json response should equal: [
  {
    "id": 70,
    "version": 0,
    "name": "Pucy80",
    "photo": "https://cdn.xyz.com/…..jpg",
    "gender": "M",
    "neutered": false,
    "description": "My dog Pucy",
    "age": 4,
    "purebred": true,
    "dateOfBirth": "03-07-2013",
    "weight": 8.9,
    "weightClass": "NA",
    "eyeColor": "BROWN",
    "akcRegistrationNo": "9",
    "accountId": 58
  }
]

