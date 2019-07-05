# Makers BnB


Summary of our project:
We are building a web application that allows users to list spaces they have available, and to hire spaces for the night.

## User stories

#### Done
```
As a User
So that I can join Makers BnB
I want to sign up to the page
```

```
As a User
So that I can view my account
I want to be able to log in to Makers BnB
```

```
As a User
So that I can add spaces to rent
I want to be able to list spaces for rent

Each space should have:
• description
• name
• price per night
```

```
As a User
So that I can see my spaces
I would like to view a list of them.
```

#### In progress

```
As a User
So that I can change the details of my spaces
I would like to be able to edit them.
```

```
As a User
So that I can remove a space
I would like to be able to delete a listing.
```

#### To do

```
As a User
So that I can offer my space
I would like to be able to offer dates the space is free.
```

```
As a User
So that I can book a space
I would like to be able to request the space for a night.
```

```
As a User
So that I can decide who stays in my space
I would like to be able to approve bookings.
```

```
As a User
So that I can know a space has been booked
I would like to receive a confirmation.
```

```
As A User
So that I can I know which dates the space is available
I would like to be able to see unavailable dates listed.
```

```
As a User
So that I don't miss out on a booking
I would like to be able to have a space available until confirmation is received.
```

### CRC cards

User

| Responsibility | Collaborators |
| ------ | ----- |
| sign up | ----- |
| log in | ----- |
| create space | space |
| list space | spaces |
| book space | spaces/booking |




Spaces

| Responsibility | Collaborators |
| ------ | ----- |
| view my spaces | user |
| edit space | user |
| delete space | user |
| availability | user |


## Instructions

1. Fork the repo.
2. Run `bundle`
3. In terminal run `psql`
4. Create the following databases with:
```
CREATE DATABASE makersbnb_development;
CREATE DATABASE makersbnb_test;
```

### To run the application
Use `rackup` to start the application.

Go to http://localhost:9292/ to visit the application to see how
it is working.

### To run tests
Use `rspec` to view tests.
