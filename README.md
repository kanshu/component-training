# Component-based Theming with Twig
This repository is for using a Composer based workflow with Drupal 8.  We will be using this repository and the branches to maintain various snapshots as we progress thru each lesson.

## Requirements
All users will need a development environment. This can be achieved either by installing the necessary development tools locally or by downloading a virtual machine that has all of the tools pre-installed and a clone of this repo already setup. Windows users (or those that do not wish to install tools locally) should follow the instructions for `Option 2: Preconfigured Virtual Machine`.

# Option 1: Setup a Local Development Environment (OSX or Linux)
1) You will need to have a built-in PHP server with Sqlite readily available to use.  This can be accomplished using a package manager such as [Homebrew](https://brew.sh/) to manually install and configure PHP 5.6 or higher or use a LAMP stack such as [Mamp Pro](https://www.mamp.info/en/mamp-pro/).  

    * Make sure that your `.bashrc` or `.zshrc` file contains the path to the PHP version you are using.
    * If you type `which php` in your terminal window it should point to the path configured above.
2) You will also need to ensure you have globally installed `Composer`, `Drush` and/or `Drupal Console` as these tools will be used to install Drupal and run various commands such as enabling PHP's built-in server and clearing Drupal's cache.
    * OSX and Linux users can refer to the [Development Workflow](https://github.com/chazchumley/component-training/blob/master/docs/developer-workflow.pdf) document to assist you with globaly installing Composer, Drush and Drupal Console.

3) Finally as we will be working with Pattern Lab, Sass and Twig we will need to ensure we can use `npm` and `grunt` which requires that both [nodejs](https://nodejs.org/en/) and [grunt-cli](https://gruntjs.com/getting-started) are installed.

Once your environment is configured you can easily create a Drupal 8 project by opening a terminal window, changing into the project root directory and running the following commands:
```
composer install
composer drupal-scaffold
```
The `composer install` command reads the `composer.json` file to install Drupal 8 and any dependencies it needs.  Any contributed modules will also be installed and the Drupal directory structure will be scaffolded.

To test PHP's built-in webserver can be run, enter the following command in the terminal window.

```
cd web
drush rs
```

To start PHP's built-in webserver using Drupal Console, run the following command.

```
drupal server
```

# Option 2: Preconfigured Virtual Environment (Windows, OSX or Linux)
1) Download and install [Virtualbox](https://www.virtualbox.org/wiki/Downloads) 
2) Download and install [Virtualbox Extension Pack](https://www.virtualbox.org/wiki/Downloads)
3) Download [Component Training VM](https://drive.google.com/drive/folders/0B_zw0jyZ5Ij8ZUFLVS1RSFgwR00) (2.6GB) which contains a pre-built Ubuntu environment configured with PHP7, Sqlite, Composer, Drush, NodeJS and Grunt.
4) Open Virtual Box and select File -> Import Appliance and choose the VM that was just downloaded
5) Select the `component-training` VM inside VirtualBox and click `start`
6) To close the VM, select File -> Close from the VirtualBox interface and select `save the machine state`

> Note: if prompted by Ubuntu or Chrome, the pasword is `component`
