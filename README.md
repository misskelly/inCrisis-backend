# README


### Overview

### Front End Repo
- https://github.com/misskelly/ccs-frontend

### Key Learnings
- Configuration of Circle CI

### Endpoints
#### https://cohelp-backend.herokuapp.com  

**GET /api/v1/locations/sort?lat=<xx_xxxx>&lng=<xx_xxxx>**  
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

### Versions

### Local Setup

### Testing

### Circle CI
[![CircleCI](https://circleci.com/gh/CSheesley/ccs_cross_poll_backend.svg?style=svg)](https://circleci.com/gh/CSheesley/ccs_cross_poll_backend)
