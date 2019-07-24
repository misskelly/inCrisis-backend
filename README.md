# README


### Overview

### Front End Repo
- https://github.com/csheesley/ccs-frontend

### Key Learnings
- Configuration of Circle CI
- Implementation of Twilio
- Documentation and Communication with Front End Team

### Endpoint Documentation
All endpoints are preceded by the following url: https://cohelp-backend.herokuapp.com  
---
**GET /api/v1/locations**  
Returns all crisis center locations in our database, along with their associated information.

Required Parameters:
`no required parameters`

Example Request:
`GET https://cohelp-backend.herokuapp.com/api/v1/locations`
```
Request:
Content-Type: application/json
Accept: application/json
```
```
Response:
status: 200
body:
{
locations: [
  {
    "id": 1,
    "name": "Walk In Crisis Center at Jefferson Center for Mental Health",
    "phone": 3034250300,
    "street": "4643 Wadsworth Blvd",
    "city": "Wheat Ridge",
    "state": "CO",
    "zip": 80033,
    "office_hours": "24/7",
    "lat": 39.7807,
    "lng": -105.0828
  },
  {
    "id": 2,
    "name": "AllHealth Network Crisis Walk In Center",
    "phone": 3037303303,
    "street": "6509 S Santa Fe Dr",
    "city": "Littleton",
    "state": "CO",
    "zip": 80120,
    "office_hours": "24/7",
    "lat": 39.5982,
    "lng": -105.0218,
  },
    ...
  ]
}
```
---
**GET /api/v1/locations/sort**  
Returns all crisis center locations and their information, ordered from closest to farthest geographically - based on a users location (latitude and longitude).

Required Parameters:
`lat` - Float: Up to four decimal places
`lng` - Float: Up to four decimal places

Example Request:
`GET https://cohelp-backend.herokuapp.com/api/v1/locations/sort?lat=39.7504&lng=-104.9963`
```
Request:
Content-Type: application/json
Accept: application/json
```
```
Response:
status: 200
body:
{
locations: [
  {
    id: 4,
    name: "Mental Health Center of Denver",
    phone: 3035041299,
    street: "4353 E Colfax Ave",
    city: "Denver",
    state: "CO",
    zip: 80220,
    office_hours: "24/7",
    lat: 39.7403,
    lng: -104.9363,
    miles: 3.7,
    meters: 5979,
    minutes: 15,
    seconds: 878
  },
  {
    id: 1,
    name: "Walk In Crisis Center at Jefferson Center for Mental Health",
    phone: 3034250300,
    street: "4643 Wadsworth Blvd",
    city: "Wheat Ridge",
    state: "CO",
    zip: 80033,
    office_hours: "24/7",
    lat: 39.7807,
    lng: -105.0828,
    miles: 8.8,
    meters: 14236,
    minutes: 16,
    seconds: 953
  },
    ...
  ]
}
```
---
**POST /api/v1/locations/information_text**  
Creates two subsequent SMS text messages which are sent to a user's phone number. These SMS messages include (1) the name of the nearest crisis center based on their given location, and (2) information about that center - address, office_hours, phone.

<<<<<<< HEAD
Required Parameters:
`location_id` - Integer: Associated with the closest crisis center which was returned in the previous API call.
`phone` - Integer: Ten consecutive digits

Example Request:
`POST http://localhost:3000/api/v1/locations/information_text?location_id=3&phone=1234567890`
```
Request:
Content-Type: application/json
Accept: application/json
```
```
Response:
status: 201
body:
{
  "response": "Text Message Sent"
}
```
Example SMS Message:

---
### Versions
Ruby 2.4.1
Rails 5.2.3
Bundler 2.0.2

### Local Setup
Install Dependencies
`$ bundle install`

Database Setup
`$ rails db:{create, migrate, seed}`

### Testing
`$ rspec`

 - circle ci mention
=======
### Versions

### Local Setup

### Testing

### Circle CI
[![CircleCI](https://circleci.com/gh/CSheesley/ccs_cross_poll_backend.svg?style=svg)](https://circleci.com/gh/CSheesley/ccs_cross_poll_backend)
>>>>>>> 87bc7cb805f99a5217d6e45ee4f6edd9e1505586
