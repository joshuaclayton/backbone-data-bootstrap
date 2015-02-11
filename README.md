# Backbone Data App

This app demonstrates how to bootstrap JSON data from ERB templates into a
Backbone app.

This is done by dumping JSON into a `<script>` tag on `posts/index.html.erb`,
then loading the data into a Backbone collection to be rendered by a Backbone
view.

## Reasoning

Bootstrapping data to the view and using Backbone to display it is a quick way
of integrating Backbone into an app that currently doesn't use it. Why?
Because it requires no change from the controllers to expose an API. By
reading JSON from the page, it becomes very simple to use pieces of Backbone
(models, collections, views) without AJAX requests or routers; those can come
later.

## Set up the app

    $ bin/setup

## Set up your Docker environment

## Start the app

    $ fig up web

## Bootstrap Data

    $ fig run web rake db:bootstrap

## Run Tests

    $ fig run web rake

## License

See the LICENSE
