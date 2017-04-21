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
Locate the Component Libraries module located at `/admin/modules` and enable it.
### Register Pattern Lab paths with Drupal
Open up `gesso.info.yml` and replace the contents with the [gesso.info.yml gist](https://gist.github.com/chazchumley/c38923ca1a4d0b4662ed0f76f288d368) which will add the following to the bottom of our themes configuration.
```
component-libraries:
  base:
    paths:
      - pattern-lab/source/_patterns/00-base
  components:
    paths:
      - pattern-lab/source/_patterns/01-components
  layouts:
    paths:
      - pattern-lab/source/_patterns/02-layouts
  templates:
    paths:
      - pattern-lab/source/_patterns/03-templates
  pages:
    paths:
      - pattern-lab/source/_patterns/04-pages
```
Make sure to clear Drupal's cache after modifying the info.yml file

### Revisit Drupal templates
Now that we have registered Pattern Lab's Twig we now have a namespace we can reference directly from within our Drupal Twig templates.  This will allow for Pattern Lab to be the canonical source of our theme's markup.  To get a better understanding of how this works we will modify the following components...

#### Button
- Open up `paragraph--button.html.twig` and replace the markup with the following [gist](https://gist.github.com/chazchumley/89de44dd1ee8f04e4ef018e8f36f8c14)
- Clear Drupal's cache and verify that our markup has not changed and it now pointing to PL

#### Hero
- Open up `paragraph--hero.html.twig` and replace the markup with the following [gist](https://gist.github.com/chazchumley/33d33b8b353314b8a097c909318f32c4)
- Clear Drupal's cache and verify that our markup has not changed and it now pointing to PL

#### Media Card
- Open up `node--news--media-card.html.twig` and replace the markup with the following [gist](https://gist.github.com/chazchumley/607d6fa6ffbc4145bc17f2dedbe629fa)
- Clear Drupal's cache and verify that our markup has not changed and it now pointing to PL

#### Media Teaser
- Open up `node--news--media-teaser.html.twig` and replace the markup with the following [gist](https://gist.github.com/chazchumley/42cfba06520326305b56c2faf9f7dd87)
- Clear Drupal's cache and verify that our markup has not changed and it now pointing to PL

#### Teaser
- Open up `node--news--teaser.html.twig` and replace the markup with the following [gist](https://gist.github.com/chazchumley/3011b7bffe987707a3f04d9c99077137)
- Clear Drupal's cache and verify that our markup has not changed and it now pointing to PL
