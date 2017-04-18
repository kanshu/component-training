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

# Lesson Four: Component Libraries
With the concept of creating components mastered, we will look at theming variations to create self-contained components that can be moved from project to project.  We will also explore using the Component library module to enable Twig namespacing, allow for more advanced Twig syntax and enable PatternLab to be our canonical source for markup.

## Creating Self-contained Components
We will begin with working thru each component and moving the Sass files that correspond to each component into the Pattern Lab folder.  This approach will allow for component reuse from project to project if needed.

### Button
Move `_button.scss` from `/sass/partials/components` to `/pattern-lab/source/_patterns/01-components/button`
### Card
Move `_card.scss` from `/sass/partials/components` to `/pattern-lab/source/_patterns/01-components/card`
### Footer Menu
Move `_nav--footer-menu.scss` from `/sass/partials/components/nav` to `/pattern-lab/source/_patterns/01-components/footer-menu` and rename to _footer-menu.scss
### Hero
Move `_hero-bg-image.scss` from `/sass/partials/components` to `/pattern-lab/source/_patterns/01-components/hero`
### Main Menu
Move `_nav--main.scss` from `/sass/partials/components/nav` to `/pattern-lab/source/_patterns/01-components/main-menu` and rename to _main-menu.scss
### Site Name
Move `_site-name.scss` from `/sass/partials/components` to `/pattern-lab/source/_patterns/01-components/site-name`
### Teaser
Move `_teaser.scss` from `/sass/partials/components` to `/pattern-lab/source/_patterns/01-components/teaser`

## Working with Component Libraries module
Registers “component libraries” defined by your theme or module as Twig namespaces.

### Enable module

### Register Pattern Lab paths with Drupal

### Revisit Drupal templates

#### Button

#### Hero
