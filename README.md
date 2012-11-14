# Themer

Themer it's a  Java web-application, that will try to determine the topic of a given text (the text should be in Russian). Themer will show the top 10 suggested topics with their probability.

## Example

The current version of this application is running on http://themer.herokuapp.com/

## How it works

The algorithm will analyze the frequency of words from a given text. Then it will fetch these words from the dictionary. The dictionary is built using Data Mining methods based on data from [Yandex.Catalog](http://catalog.yandex.ru/) web-service.

## Technologies used

* Java
* Jetty
* PostgreSQL
* Maven

## Running the application

The application can be built with Maven.

First build with:

    mvn clean install

Then run it with:

    java -cp target/classes:target/dependency/* com.art.themer.Main

## Deploying

The project is ready to deploy on [Heroku](http://www.heroku.com/) via git.
