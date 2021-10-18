# Notes

1. Documentation for JSON API Serializer: "https://github.com/jsonapi-serializer/jsonapi-serializer"
2. Documentation for Building out Project: "https://github.com/learn-co-curriculum/mod3-project-week-setup-example"


## Tables to Set Up
- Books - add author, what number it is in series, type(ie. Novel or Novella), paperback_pages, hardcover_pages, chapters, association of characters, association of point of view characters
- Characters
- Essences
- Surges
- Orders of the Knights Radiant
- Heralds
- Nations
- Races

- CREATE SELF REFERENCE FOR CHILDREN, RELATIVES, etc similar to father mother spouse


## Adding Users with Login/Sign Up
User Structure
Roles: Admin, Verified Contributor, Contributor
- The set up should be that Admin has full access to management of users, verified users, add, edit, delete of data;
- The admin has a "Dashboard" page, which shows some analytics like number of total contributions, users, etc; all the users are listed in a table where the admin has ability to change the users role, the table also shows how many contributions the user has made. 
- There should be a way where when a contributor makes an edit or addition, before it becomes official, the admin has to verify the changes; a Verified contributor does not need this designation


LOOK INTO DEVISE, PUNDIT, RAILSADMIN

SEED THE DATABASE INITIAL ADMIN USER; users need ability to change password


## Front End
- this will be how people can see how to use the API and what the results would look like
- will need to set up a way for people to contribute to adding or updating characters to the API or send requests to me to add something missing from API


## Add License File
## Add Contributing Section
## Add Code of Conduct File

## Look to hosting on Firebase - front end is set up and prepped with firebase



- To start development for backend, make sure postgres is running (sudo service postgresql start)
- Then run `rails s` 
- Run `db:create` if no database
- Run `db:migrate` to get schema
- Run `db:seed` to prepopulate some working data



DEVISE SETUP: `https://thinkster.io/tutorials/rails-json-api/setting-up-users-and-authentication-for-our-api`
Authentication SETUP: `https://medium.com/ruby-daily/a-devise-jwt-tutorial-for-authenticating-users-in-ruby-on-rails-ca214898318e`
Authentication SETUP 2: `https://dev.to/dhintz89/devise-and-jwt-in-rails-2mlj`
DEVISE Instructions
1. Ensure you have defined default url options in your environments files. Here is an example of default_url_options appropriate for a development environment in config/environments/development.rb:

config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

In production, :host should be set to the actual host of your application.
* Required for all applications. *

2. Ensure you have defined root_url to *something* in your config/routes.rb. For example:

root to: "home#index"
     
* Not required for API-only Applications *

3. Ensure you have flash messages in app/views/layouts/application.html.erb. For example:

<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>

* Not required for API-only Applications *

4. You can copy Devise views (for customization) to your app by running:

rails g devise:views

* Not required *



CURRENTLY:
- Have set up the user authentication; can create new users with sign up route, can login, can logout
- Look into setting up the connection with the front-end to sign up and log users in
- Use the before_action authenticate_user! method only for create/update actions in various models (see BooksController)

- Setup multiple roles/admins with pundit