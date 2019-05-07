# Project Title

## **Cat-BNB** 
**Getting your cat the attention it deserves!**

After reviewing the Swedish cyberspace, we discovered that there is no affordable solution for cat owners that want to leave their cats to a safe place, when going on vacation.

During our studies in Craft Academy, we decided to make a small basic application which covers that need.

Inspired by AirBNB, we set out on May 2019 to create something similar, where interested cat hosts can post their details, for cat owners to find them.

This was a one week project (May 6th - 12th).

# User Stories

Check the whole design sprint and user story history of the project in [this](https://www.pivotaltracker.com/n/projects/2344914) Pivotal Tracker board.

# Deployment

We have deployed this application using Heroku. You can navigate through it......(to be announced).

# Tests, Test Coverage & CI

This application was feature tested using [Cucumber](https://cucumber.io/) and unit tested using [Rspec](https://rspec.info/).

To be able to run the tests, run `bundle install` in your terminal as soon as you fork this repository.

You must also have the database migrations in place, in order for everything to work properly. So in your terminal run `rails db:migrate`. In case this command produces an error, you can run `rails db:drop` and then `rails db:create db:migrate`.

After that, use `bundle exec cucumber` or `bundle exec rspec` to avoid any conflicts with the gems of this repo and your local gems.

Alternatively, you can run `rake` to run both feature and unit tests.

Feature tests are located in the `features` folder and unit tests in the `spec/models` folder.

[Coveralls](https://coveralls.io/) was used to measure the application's test coverage.

[Semaphore CI](https://semaphoreci.com/) was used for continious integration.

# Built With

* [Ruby on Rails](https://rubyonrails.org/) version 5.2.0
* [Ruby](https://www.ruby-lang.org/en/) version 2.4.1

# Authors

* **Carla**- [GitHub Profile](https://github.com/Carrosen) - [Portfolio Website](https://portfolio-carla-rosen.netlify.com/)
* **Zane**- [GitHub Profile](https://github.com/zanenkn) - [Portfolio Website](https://zanenkn.netlify.com/)
* **Stefan** - [GitHub Profile](https://github.com/stefankarlberg) - [Portfolio Website](https://mystifying-einstein-390384.netlify.com/)
* **Felix** - [GitHub Profile](https://github.com/leiter007) - [Portfolio Website](https://felix-react-portfolio.netlify.com/)
* **Boa** - [GitHub Profile](https://github.com/SnailCoder1) - [Portfolio Website](https://boamatule.netlify.com/)
* **raptorf1** - [GitHub Profile](https://github.com/raptorf1) - [Portfolio Website](https://gtomaras-portfolio.netlify.com/)

# License

This project is licensed under the [MIT](https://opensource.org/licenses/MIT) license.

# Acknowledgments

* [PurpleBooth](https://github.com/PurpleBooth) for this README template.
* [Rails Guides](https://guides.rubyonrails.org/index.html) for the detailed documentation.
* [Stack Overflow](https://stackoverflow.com/) for the guidance during the "difficult" times during development.
