# Composer-based Theming with Twig
This repository is for using a Composer based workflow with Drupal 8.  We will be using this repository and the branches to maintain various snapshots as we progress thru each lesson.

## Assumptions
There are some basic assumptions that you have a built-in PHP server and have globally installed Composer, Drush and Drupal Console.
- OSX and Linux users can walkthru the [Development Workflow](https://github.com/chazchumley/component-training/blob/master/docs/developer-workflow.pdf) document to assist with globaly installing Composer, Drush and Drupal Console.
- Window users should use [DrupalVM](https://www.drupalvm.com/) to setup a virtual environment that contains PHP, Composer, Drush and Drupal Console

## Usage
Once the assumptions above have been completed you can easily create the Drupal 8 project by opening a terminal window, changing into the project root directory and running the following commands:

```
composer install
composer drupal-scaffold
```
The `composer install` command reads the `composer.json` file to install Drupal 8 and any dependencies it needs.  Any contributed modules will also be installed and the Drupal directory structure will be scaffolded.

```
drupal server
```
With `drupal server` you should now have a PHP webserver running on 127.0.0.1:8088 that you can now browse to within your favorite web browser.

# Lesson Five: UI Patterns
As designs evolve so will the patterns required to work smarter with Drupal.  We will take a look at some of the more advanced components and how to tackle them.  Also we will take a peek at the new UI Pattern Library module and how it integrates with Field Formatters and Display suite.

## Advanced Patterns


## Working with UI Patterns module
Define and expose self-contained UI patterns as Drupal plugins and use them seamlessly as drop-in templates for panels, field groups, views, Display Suite field templates, paragraphs, nodes or any other entity types.

### Enable module
Locate the UI Patterns module located at `/admin/modules` and enable it.
