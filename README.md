# TheBaconJobs API

This application serves as a RESTful API for for our front end Job Board.

## Outline

- [Getting Started](#getting-started)
- [Testing APIs](#testing-apis)
- [Quick Reference](#quick-reference)

## Libaries

This project is using the following frameworks:

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

 ## Testing APIs

### Posts

Posts - Read data of all posts

Get
```
/v1/posts
```

Example Usage
```bash
curl -i https://thebaconjobsapi.herokuapp.com/v1/posts
```

Response
```
HTTP/1.1 200 OK
Server: Cowboy
Date: Wed, 23 Aug 2017 19:44:01 GMT
Connection: keep-alive
Content-Type: application/json; charset=utf-8
Etag: W/"60419e6f38ee8870be6cf261335eab2d"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 54d8c603-5b6f-4a9a-81e5-3d3b98dcce3a
X-Runtime: 0.009011
Strict-Transport-Security: max-age=15552000; includeSubDomains
Vary: Origin
Transfer-Encoding: chunked
Via: 1.1 vegur

[{"id":1,"position":"Software Engineer","description":"Middle-out compression unleashed with machine learning.","employer":"TheBacon","location":"San Francisco, CA","term":"Full-time","categories":"Software Engineering,Desgin UI/UX,QA Testers"}]
```
