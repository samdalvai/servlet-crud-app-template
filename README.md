# Introduction

Configuring a `Java JSP Servlet` application to run in a local tomcat server can prove difficult.
The purpose of this project is to provide a template for a simple Java Servlet CRUD application, that can be easily run with Docker without the need of manually configuring database and server.

The application is based on a tutorial, which can be found at this [website](https://www.codejava.net/coding/jsp-servlet-jdbc-mysql-create-read-update-delete-crud-example)
The persistence layer is provided by the [Esfinge Querybuilder](http://esfinge.sourceforge.net/Query%20Builder.html) framework.

## What is included
* Basic template for `Java JSP Web` CRUD application
* Persistence layer based on `Esfinge Querybuilder` framework, configured for `MySQL`
* Docker definition for web application with `tomcat` and `MySQL` database
* `Cypress` framework with basic tests for end-to-end testing

## Application Prerequisites

* Java 1.8 or higher.
* Maven
* Docker

## How to configure the project

* Open the project with you preferred IDE.
* Load `Maven script` if prompted by the IDE you are using.

## How to run the project
* Run `docker-compose up --build -d` to run the tomcat server and the database.
* The configuration should load all the queries found in `sql/Bookstore.sql` automatically the first time the docker container is created, if this is not the case you might need to run all of them manually.
* Visit [localhost:8080/BookstoreApp-1.0-SNAPSHOT/](http://localhost:8080/BookstoreApp-1.0-SNAPSHOT/) in the browser to access the application.