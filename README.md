# LimerIQ

A [limerick (poem)](https://en.wikipedia.org/wiki/Limerick_(poetry)) authoring and sharing app.

## How to Initialize and Run the App

### Prerequisites

- **RVM** is assumed (see [Rails Demos-n-Deets](https://rails-demos-n-deets-2023.herokuapp.com/demos/development-environment) for setup instructions).
- **Ruby version 3.1.2** is required.
  - `rvm install 3.1.2` - Install Ruby 3.1.2 using RVM.
- **Bundler** is required (see [Rails Demos-n-Deets](https://rails-demos-n-deets-2023.herokuapp.com/demos/development-environment) for setup instructions).
- **PostgreSQL** is required  (see [Rails Demos-n-Deets](https://rails-demos-n-deets-2023.herokuapp.com/demos/development-environment) for setup instructions).
- **NodeJS** is required (see [Rails Demos-n-Deets](https://rails-demos-n-deets-2023.herokuapp.com/demos/development-environment) for setup instructions).

### Initializing the App

- `bundle install` - Install all the necessary gems.
- `rails db:migrate:reset` - Reset and initialize the database.
- `rails db:seed` - Save seed data to the database (see `db/seeds.rb`).

### Running the App

- `rails server` - Run the development web server.
- Open <http://localhost:3000/> in the browser to launch the app (root page).
