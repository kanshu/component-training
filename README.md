# Component-based Theming with Twig
This repository is for using a Composer based workflow with Drupal 8.  We will be using this repository and the branches to maintain various snapshots as we progress thru each lesson.

## Assumptions
There are some basic assumptions that all users have a built-in PHP server with Sqlite and have globally installed Composer, Drush or Drupal Console, Nodejs and Grunt.

### Do it yourself
* OSX and Linux users can walkthru the [Development Workflow](https://github.com/chazchumley/component-training/blob/master/docs/developer-workflow.pdf) document to assist with globaly installing Composer, Drush and Drupal Console.  Documentation to install `nodejs` can be found at (https://nodejs.org/en/) and directions to install `grunt-cli` can be located here (https://gruntjs.com/getting-started).

### Done for you

* All users who do not have a local development envionrment setup and configured can choose to use use the [Component Training VM](https://drive.google.com/drive/folders/0B_zw0jyZ5Ij8ZUFLVS1RSFgwR00) which contains a pre-built Ubuntu environment already configured with PHP7, Sqlite, Composer, Drush, NodeJS and Grunt.
 * This is a 2.6 GB download and requires that you have [VirtualBox](https://www.virtualbox.org/) installed.
 * 


  

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
