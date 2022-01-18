# Lecture 3 Exercise

Together as a group, implement the following features into the API, carefully thinking through each of the questions necessary to build out an update and delete feature for the Review model.

1. [ ] Users can edit an existing review. Make sure that users can only edit the content attribute(hint: strong params).

- What HTTP verb is required?
- What is the associated REST route?
- What controller and action is responsible for handling this request?
- What should the strong params include?

To complete this exercise:

1. Create a new review associated with an existing user and business. This can be done in the seeds.rb file or in rails console.
2. Define a route in `config/routes.rb`
3. Add the controller action.
4. Inside the controller action, make sure to first find the review that needs to be updated. Add control flow to ensure that if the review is not found, a correct response is generated, and if an update occurs, the review is serialized as a JSON response(before/rescues can be used as an alternative).

5. [ ] Users can delete an existing review.

- What HTTP verb is required?
- What is the associated REST route?
- What controller and action is responsible for handling this request?
- What should the strong params include?

To complete this exercise:

1. Define a route in `config/routes.rb`
2. Add the controller method.
3. Inside the controller method, make sure to first find the review that needs to be deleted. Add control flow to ensure that if the review is not found, a correct response is generated. How should a successful delete be handled? Does this type of request require a reponse?

# Lecture 4 Exercise

If receiving the following error:

```
Your Ruby version is 2.6.1, but your Gemfile specified 2.7.4
```

run the command `rvm use 2.7.4`

### Business

Create a `BusinessSerializer` with the command `rails g serializer business`

A business should be serialized with the following:

- [ ] `name` and `category`: These are the attributes that belong to a business object.
- [ ] The `city`, `state` and `zip_code` should be returned as `location` in the following format: `"Los Angeles, CA 90810"`: The best method to format and return customized data is by using instance methods inside the serializer. Don't forget to add the method to the list of attributes for invoction.
- [ ] Return a list of reviews including `content`: Consider if this should be added as `:reviews` to the list of attributes, or if a separate serializer concerning review objects should be created.

### Review

Create a `ReviewSerializer` with the command `rails g serializer review`

A review should be serialized with the following:

- [ ] `content` which is an attribute that belongs to a review.
- [ ] Return the date the review was created by using the `created_at` attribute in the following format as `post_date`:

Use the following method to format the date. We need to call the following piece of code on the instance that is being serialized. How do we gain access to the instance inside of a serializer instance method?

```rb
 created_at.strftime("%m/%e/%Y %l:%M%p %Z")
```

[For a good strftime](https://foragoodstrftime.com/)

# Testing BusinessSerializer

Expected outcome:

```json
[
  {
    "id": 1,
    "name": "Starbucks",
    "category": "cafe",
    "location": "north pole, california 100099",
    "reviews": [
      {
        "id": 2,
        "content": "this is a great place!",
        "post_date": "11/24/2021 9:20PM UTC"
      }
    ]
  },
  {
    "id": 2,
    "name": "McDonalds",
    "category": "fast-food",
    "location": "south pole, california 100099",
    "reviews": []
  },
  {
    "id": 3,
    "name": "Dennys",
    "category": "diner",
    "location": "los angeles, california 100099",
    "reviews": []
  }
]
```

Navigate to `http://localhost:3000/businesses` in the browser. What is the response? Why is the collection of businesses not being serialized? HINT: `each_serializer`

Refresh the page to confirm that data serialization is correct.

BONUS: Think about how to also serialize and return author's `username` of each review.

# Lecture 5 Exercise

For this exercise, add the following features to the Yelp clone:

[ ] Signup
[ ] Login
[ ] Authentication
[ ] Logout

### What dependencies do we need to add to support authentication? HINT: What Ruby gem will allow us to salt and store safe passwords?

### Configurations that are necessary to gain access to sessions and cookies:

Inside `config/application.rb`

```rb
config.middleware.use ActionDispatch::Cookies
config.middleware.use ActionDispatch::Session::CookieStore

# Use SameSite=Strict for all cookies to help protect against CSRF
config.action_dispatch.cookies_same_site_protection = :strict
```

We'll also need to include the middleware within the `ApplicationController`

```rb
class ApplicationController < ActionController::API
  include ActionController::Cookies
  # ...
end
```

### Database

We need a `password_digest` column in our `users` table to store our users' encrypted passwords.

```bash
rails g migration AddPasswordDigestToUsers password_digest
```

```bash
rails db:migrate
```

### Models

- We need to add the `has_secure_password` macro to the model to implement the `authenticate` and `password=` methods used in login & signup actions respectively

5. Make sure that a `UserSerializer` exists. NOTE: Do not serialize a user password.

### Adding a signup feature

- What route needs to be added to `config/routes.rb`?
- What controller action is responsible for handling a signup?
- What type of HTTP verb will be used for this request?
- What is the controller action's responsibility and how to handle the incoming request? The logic defined here should handle a successful and unsuccessful signup. Don't forget to log the user in, what piece of code is essential for this?

### Adding a login feature

- What route needs to be added to `config/routes.rb`?
- What controller action is responsible for handling a login?
- What type of HTTP verb will be used for this request?
- What is the controller action's responsibility and how to handle the incoming request? The logic defined here should handle a successful and unsuccessful login.
- Don't forget to log the user in, what piece of code is essential for this?

### Adding an authentication method that will prove if a current user exists or not

- What route needs to be added to `config/routes.rb`?
- What controller action is responsible for handling this request?
- What type of HTTP verb will be used?
- What is the controller action's responsibility and how to handle the incoming request? For this action, what is going to be checked to determine if a user has already logged in and been authenticated? What special method exists to set our logged in user?
- NOTE: Update the `current_user` method so that it makes use of the `user_id` stored in the session cookie sent from the browser.

### Adding a logout feature

- What route needs to be added to `config/routes.rb`?
- What controller action is responsible for handling the logout request?
- What type of HTTP verb will be used?
- What is the controller action's responsibility and how to handle the incoming request? Will there be a return value?
- How is logging a user out handled?
