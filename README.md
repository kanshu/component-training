# Composer-based Theming with Twig
This repository is for using a Composer based workflow with Drupal 8.  We will be using this repository and the branches to maintain various snapshots as we progress thru each lesson.

## Assumptions
There are some basic assumptions that you have a built-in PHP server and have globally installed Composer, Drush and Drupal Console.
- OSX and Linux users can walkthru the [Development Workflow](https://github.com/chazchumley/component-training/blob/master/docs/developer-workflow.pdf) document to assist with globaly installing Composer, Drush and Drupal Console.
- Window users should use [DrupalVM](https://www.drupalvm.com/) to setup a virtual environment that contains PHP, Composer, Drush and Drupal Console.  Make sure to enable `nodejs` in the `config.yml` file to allow for installing and using NPM and Grunt

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
