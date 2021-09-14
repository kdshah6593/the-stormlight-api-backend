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