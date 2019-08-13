# Url Shortener Code Test

A simple web app to shorten URLs.

## Getting started

### Running the server

Type in the CLI:
```
$ rackup
```

CLI outputs a port and gives a URL in the following format `localhost:XXXX`.  

Visiting that URL in a web browser displays `Welcome to the URL shortener`.

### Running the tests

Type in your CLI:
```
$ rspec
```

## Technologies
- Ruby
- RSpec
- Sinatra
- Capybara

## Room for immediate improvement:
- Dockerising the app
- Further testing stubbing methods and edge cases i.e. receiving an empty form
- Inputing parameters in http POST request as a JSON
- Refactoring

## Room for further development:
- Integrating Rubocop for checkstyle
- Integrating Simplecov for test coverage
- Integrating Cucumber for BDD development
