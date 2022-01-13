# Lecture 2 exercise

Refer to this doc for validations: [Active Record Validations](https://guides.rubyonrails.org/active_record_validations.html)

1. [x] Add the following validations to the models:

- Upon creation of a business object, a name and address must be present
- A new user should be created with a username and email present, both must be unique.
- A review must be created with content.

2. [x] Create a current user method to associate objects created with a 'logged in' user:

```rb
inside ApplicationController

private

def current_user
  User.last
end
```

3. [x] Define a route and controller method responsible for creating a new business. Reminder: Handle valid or invalid data in the controller method.

example on how to handle valid or invalid data:

```rb
  if obj.save
    render json: obj, status: :created
  else
    render json: { error: obj.errors.full_messages }, status: :unprocessable_entity
  end
```

4. [ ] Define a route and controller method to create a new review.

   - When a new review is created, the foreign key for a user and business must be present due to the requirements enforced by a `belongs_to` association.
   - For this we can use the currently logged in user by invoking on the `current_user` hint: `current_user.reviews.create(...)` An associated `business_id` could be provided in a few different ways. Get creative and consider how this would be handled. Typically, a nested route would be set up to include the `business_id` for which the review is being submitted for, but we will not be handling it this way today.
   - Reminder to handle valid or invalid data.

5. [ ] Run `rails s` and test the methods defined in the API such as:

- Create a new business succesfully. What is the response?
- Create a failed new business. How can the unsuccessful attempt be further investigated? What steps can be taken?

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
