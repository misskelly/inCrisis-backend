# README


### Overview

### Front End Repo
- https://github.com/misskelly/ccs-frontend

### Key Learnings
- Configuration of Circle CI

### Endpoints
#### https://cohelp-backend.herokuapp.com  

**GET /api/v1/locations?lat=<xx_xxxx>lng=<xx_xxxx>**  
returns all crisis center locations, orderd from closest to furthers geographically

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
      "name": "Denver Walk-In Crisis Services",
      "phone": 3035041299,
      "address": "4353 E. Colfax Avenue",
      "city": "Denver", 
      "state": "CO", 
      "zip": 80220,
      "hours": "24 hours a day, 7 days a week",
      "lat": 39.7403,
      "lng": -104.9363
    },
    {
      "id": 2,
      "name": "Boulder Walk-In Crisis Services",
      "phone": 3034438500,
      "address": "3180 Airport Road",
      "city": "Boulder",
      "state": "CO",
      "zip": 80301
      "hours": "24 hours a day, 7 days a week",
      "lat": 40.0330,
      "lng": -105.2360
    },
    ...
  ] 
}
```

### Versions

### Local Setup

### Testing

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
