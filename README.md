# PlanRadar-Task

1-This is a simple application that allow you to make a crud operation on a project and got weather data for this project based on city assigne to this project through this app you can :-

 - get weather information for the next 3 days for each city.
 - create/updated/delete project.
 - add custom fields.
 - load more projects.
 - sort those project by many options

2-Here are the installation steps to run the project :

   - Ruby version  : ruby-2.6.0
   - Rails version : Rails 6.0.4
   - To up the env : docker-compose up --build
   - Run the database migrations and seeds : docker-compose exec web  bundle exec rails db:prepare db:migrate

3-Import apis collection to your postman : https://www.getpostman.com/collections/88ef7c55acbc72a1a548

5-Those apis not require to be authentication.
    
6-You can run unit tests by run : bundle exec rspec

7-Gems i used in this task :-

   - gem 'pry', '~> 0.12.2'
   - gem 'active_model_serializers', '~> 0.10.0'
   - gem 'will_paginate', '~> 3.1', '>= 3.1.6'
   - gem 'has_scope'
   - gem 'rack-cors'
   - gem 'faraday'
   - gem 'faraday_middleware'
   - gem 'rspec-rails'
   - gem 'shoulda-matchers', '2.5', require: false
   - gem 'shoulda-callback-matchers', '~> 1.1.1'

    