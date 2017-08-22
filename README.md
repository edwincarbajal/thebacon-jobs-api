# TheBaconJobs API

This application serves as a RESTful API for for our front end Job Board.

## Outline

- [Getting Started](#getting-started)
- [Building APIs](#building-apis)
- [Quick Reference](#quick-reference)

## Libaries

This project is using several libraries and frameworks:

 - [Rails 5.0.5](http://rubyonrails.org/) - Web Framework

 ## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development.

### Prerequisites

Make sure you have Ruby 2.3.1 and Git installed. Type into the terminal:

```bash
$ ruby -v
```

Verify you see "ruby 2.3.1pXXX" (where the XXX can be any number). If not then download and run [RailsInstaller](http://railsinstaller.org/) in order to get Ruby.

### Installing

A step by step series of examples that tell you how to get a development env running

You want to clone your version of this repository locally:

```bash
$ git clone https://github.com/edwincarbajal/thebacon-jobs-api.git
```

### Setup

Run the task to install dependencies:

```bash
$ bundle
```

Now setup your local database for use on your computer:

```bash
$ rake db:migrate db:seed
```

### Running

Once you are setup, be sure to start your Rails application:

Because we will be running this application simultaneously with our front end, let's start our server on a different port.

```bash
$ rails s -p 3001
```

This starts your API application at <http://localhost:3001> so you
can try it locally. Try going to <http://localhost:3001/v1/posts>.

```javascript
[
  {
    "id": 1,
    "position": "Software Engineer",
    "description": "Middle-out compression unleashed with machine learning.",
    "employer": "PiedPiper",
    "location": "San Francisco, CA",
    "term": "Full-time",
    "categories": "Software Engineering,Desgin UI/UX,QA Testers"
  }
]
```
