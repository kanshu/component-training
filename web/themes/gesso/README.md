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

## Working with UI Patterns module
Define and expose self-contained UI patterns as Drupal plugins and use them seamlessly as drop-in templates for panels, field groups, views, Display Suite field templates, paragraphs, nodes or any other entity types.

### Enable module
Locate the UI Patterns module located at `/admin/modules` and enable UI Patterns, UI Patterns Display Suite, UI Patterns Layout and UI Patterns Library.  Confirm and accept additional module dependencies such as Display Suite and Layout Discovery

#### Create Image Caption pattern
- Create Patterns folder located at `/web/themes/gesso/templates/patterns`
- Create new pattern called `pattern-image-caption.html.twig` and add the content of the following [gist](https://gist.github.com/chazchumley/29c343837081cbc8a63dfb922231cc89)
- Create `gesso.ui_patterns.yml` and add the content of the following [gist](https://gist.github.com/chazchumley/39ee501d8863a1f916da42949118a601)
- Preview Image Caption pattern at `/patterns`
- Image Caption Pattern is now exposed to Drupal and can be used to map fields to using Display Suite

#### Create Image Caption Paragraph
- Image (Image)
- Caption (Text, plain)
- Manage display (Choose Image Pattern from Layout - Select a layout)
- Add Image Caption to /components page
- Preview results

## Advanced UI Patterns
Now lets take a look at the best of both worls by combining Pattern Lab with the Component Libraries modules and the UI Patterns module to have our new pattern use markup from PL

### Create Image Caption Component in PL
- Create new `image-caption` folder within `/pattern-lab/source/_patterns/01-components`
- Create `image-caption.scss` file and copy content of [gist](https://gist.github.com/chazchumley/75a80d84308408460621908b30a02cf0)
- Create `image-caption.twig` file and copy content of [gist](https://gist.github.com/chazchumley/44a8a25f0b8719325bcda68f03b77bb6)
- Create `image-caption.yaml` for data variables and copy content of [gist](https://gist.github.com/chazchumley/9724a8c48c73e7dbd6e2e736cc8bc06f)
- Modify `gesso.ui_patterns.yml` to add use: statement to point to Pattern Lab component - [gist](https://gist.github.com/chazchumley/642434aa7583a14d38b2a554094d412f)
- Review `/components` page to make sure image caption is rendering
