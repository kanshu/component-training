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

# Lesson Three: Building Components
During this lesson we will be reviewing a design, identifying components and begin building our first components using Pattern Lab.  We will learn how to create simple components, combine components and then migrate components to Drupal 8 using Twig.  Various modules will come in handy such as Paragraphs, Twig Tweak and Twig field value.

## Reviewing the Homepage Design
[Homepage](https://codepen.io/cchumley/full/PmPPMb/)

## Creating our first component (Hero)
- Step One Review [Hero](https://codepen.io/cchumley/full/eWppEy)
- Create markup
- Review final Completed example [Hero](https://codepen.io/cchumley/pen/eWppEy)
- Create component in PL [Convert markup to Twig](https://gist.github.com/chazchumley/3ddcf9d7374a29e179e5a50e39a5aeb4)
- Create dependent button component in PL [Convert markup to Twig](https://gist.github.com/chazchumley/146d18bee71ef10395dd6351ae3347d6)

## Creating our second component (Media Card)
- Step One Review [Media Card](https://codepen.io/cchumley/full/aWvvKR/)
- Create markup
- Review final Completed example [Media Card](https://codepen.io/cchumley/pen/aWvvKR)
- Create component in PL [Convert markup to Twig](https://gist.github.com/chazchumley/92c201754b1c95f0f06d97b2b96f5d1e)

## Creating our second component (Teaser)
- Step One Review [Teaser](https://codepen.io/cchumley/full/EmVVMG/)
- Create markup
- Review final Completed example [Teaser](https://codepen.io/cchumley/pen/EmVVMG)
- Create component in PL [Convert markup to Twig](https://gist.github.com/chazchumley/b5772a59d980fcca8e7e08dae3ad353c)

## Creating our second component (Media Teaser)
- Step One Review [Media Teaser](https://codepen.io/cchumley/full/Gmppwp/)
- Create markup
- Review final Completed example [Media Teaser](https://codepen.io/cchumley/pen/Gmppwp)
- Create component in PL [Convert markup to Twig](https://gist.github.com/chazchumley/28114f7f9f26c22cf282a42305bb84c9)

## Creating Page Template (Homepage)
- Step One Review [Homepage](https://codepen.io/cchumley/full/PmPPMb/)
- Review [homepage.twig](https://gist.github.com/chazchumley/d7abbaf8b80d2c4f35879b1084fa44d8)
- Working with `@includes` and `@includes with` variables
- Repeating content with loops and `listitems.yaml`
- Review completed [homepage.twig](https://gist.github.com/chazchumley/b5162cd77b831f1edb168da9f476f211) in PL

# Converting Hero Components into Drupal
- Identify how the Hero component would translate to Drupal using Paragraphs
- Working with Paragraphs to Create Hero and Button paragraph types
-- Nesting paragraph types for reuse and flexibility
- Add Hero paragraph to Homepage in Drupal
- Review output
- Create [paragraph--button.html.twig](https://gist.github.com/chazchumley/3cac479c1040b29f904eb29060fecf27) file for Hero
- Create [paragraph--hero.html.twig](https://gist.github.com/chazchumley/73fa8a5faa1a83f1fbea0dc1d4013aea) file for Hero
- Clear cache
- Review output to ensure it now matches PL Hero

## Converting Card to Drupal
- Review `/news` to review the current output of News content and the various display modes
- Create [node--news--media-card.html.twig](https://gist.github.com/chazchumley/8113e803cab0ef073d435fd1a34345a5) file for News Media Card
- Clear cache
- Review output to ensure it now matches PL Card

## Converting Teaser Image to Drupal
- Review `/news` to review the current output of News content and the various display modes
- Create [node--news--media-teaser.html.twig](https://gist.github.com/chazchumley/036ed78c3be37fc122ebc3e905d7b7ef) file for News Media Teaser
- Clear cache
- Review output to ensure it now matches PL Card

## Converting Teaser to Drupal
- Review `/news` to review the current output of News content and the various display modes
- Create [node--news--teaser.html.twig](https://gist.github.com/chazchumley/84634de0f8adb307311c3fcb04eae895) file for News Teaser
- Clear cache
- Review output to ensure it now matches PL Card

## Creating News Section in Drupal
- Using Paragraphs to create News Section
-- Entity reference to News content type
-- Limit to 4
-- Manage display (Rendered Entity - Rendered as Media Card)
- Add News Section to Homepage Landing page (Review output)
- Create [paragraph--news-section.html.twig](https://gist.github.com/chazchumley/1305b6cd25eae5fe9850858d93a7bdd6)
- Review output to ensure it now matches PL News Section

## Creating News Subsection in Drupal
- Explain how we use Views to display content not fields that allow for using display modes
- Review Updates view and Releases view
- Using Paragraphs to create News Subsection
-- Entity reference to View
-- Limit to 2
-- Manage display (Entity ID)
- Add News Subsection to Homepage Landing page (Review output)
- Create [paragraph--news-subsection.html.twig](https://gist.github.com/chazchumley/e803da8d069da5e562182a99b01dc339)
- Review output to ensure it now matches PL News Subsection
