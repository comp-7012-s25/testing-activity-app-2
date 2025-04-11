# LimerIQ

A [limerick (poem)](https://en.wikipedia.org/wiki/Limerick_(poetry)) authoring and sharing app.

## How to Initialize and Run the App

### Prerequisites

See [Rails Demos-n-Deets](https://rails-demos-n-deets-2023.herokuapp.com/demos/development-environment) for setup instructions.

- **Mise** is assumed.
- **Ruby version 3.3.6** is required.
- **Bundler** is required.
- **PostgreSQL** is required.
- **NodeJS** is required.

### Initializing the App

- `bundle install` - Install all the necessary gems.
- `rails db:migrate:reset` - Reset and initialize the database.
- `rails db:seed` - Save seed data to the database (see `db/seeds.rb`).

### Running the App

- `rails server` - Run the development web server.
- Open <http://localhost:3000/> in the browser to launch the app (root page).
