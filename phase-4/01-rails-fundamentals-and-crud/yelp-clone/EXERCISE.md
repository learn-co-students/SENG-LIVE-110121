# Phase 4 Lecture 1 Exercise

During the breakout exercises, the goal is to apply the tasks learned in the demo portion of lecture, to build out a Rails application together as a group. There should be a designated individual that will share their screen while the rest of the group will help navigate through each task. This is a great opportunity to solidify understanding of the concepts that have been covered in the lessons and lecture so participation is encouraged for everyone.

The application that we will build together will be a Yelp clone API.

There will be 3 models: User, Review, and Business

<p align="center">
    <img src="../public/exercise.png" width="400" height="300">
</p>

NOTE: Reviews table should also have a 'content' column set to the type of 'text'.

### Lesson Deliverables

1. [ X ] Currently, a Rails app named 'yelp-clone-api' was created using the following command:

```rb
rails new yelp-clone-api --api --minimal --skip-javascript -T
```

2. [ ] Configure CORS

- Navigate to `config/initializers/cors.rb` and comment out lines 8-16
- Change `origins` to `'*'`

```rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```

- In gemfile, comment back in `gem 'rack-cors'` and run `bundle update`

3. [ ] Use Rails generators to create table migrations for User, Review, Business that reflect the domain model
4. [ ] Add model associations to reflect relationships between the data
5. [ ] Add the following seed data to `db/seeds.rb`. Feel free to create any additional data:

```rb
bob = User.create(username: "bobiscool", email: "bobiscool@123.com")
sam = User.create(username: "samiam", email: "samiam@123.com")

starbucks = Business.create(name: "Starbucks", category: "cafe", city: "north pole", state: "california", zip_code: 100099)
mcdonalds = Business.create(name: "McDonalds", category: "fast-food", city: "south pole", state: "california", zip_code: 100099)
dennys = Business.create(name: "Dennys", category: "diner", city: "los angeles", state: "california", zip_code: 100099)
```

7. [ ] Define an index route and controller method for businesses. Return all business records as JSON.
8. [ ] Create a show route and controller method for businesses. Return a single business record given the id in the params hash, as JSON.
