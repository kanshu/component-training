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

# Lesson Three: Building Components
During this lesson we will be reviewing a design, identifying components and begin building our first components using Pattern Lab.  We will learn how to create simple components, combine components and then migrate components to Drupal 8 using Twig.  Various modules will come in handy such as Paragraphs, Twig Tweak and Twig field value.

## Reviewing the Homepage Design
Add Codepen url

## Creating our first component (Hero)
- Step One Review Hero (look at design)
- Create markup
- Review final Completed example [Hero](http://codepen.io/sbrack8t/pen/e66edb85ddee12e2a220a660f7f6aa14)
- Create component in PL (Convert markup to Twig)

## Creating our second component (Card)
- Step One Review Card (look at design)
- Create markup
- Review final Completed example [Card](http://codepen.io/sbrack8t/pen/e66edb85ddee12e2a220a660f7f6aa14)
- Create component in PL (Convert markup to Twig)

## Creating our second component (Teaser)
- Step One Review Teaser (look at design)
- Create markup
- Review final Completed example [Teaser](http://codepen.io/sbrack8t/pen/e66edb85ddee12e2a220a660f7f6aa14)
- Create component in PL (Convert markup to Twig)

## Creating our second component (Teaser Image)
- Step One Review Teaser Image (look at design)
- Create markup
- Review final Completed example [Teaser Image](http://codepen.io/sbrack8t/pen/e66edb85ddee12e2a220a660f7f6aa14)
- Create component in PL (Convert markup to Twig)

## Creating Page Template (Homepage)
- Step One Review Homepage (look at design)
- Review homepage.twig
- Introduce concept of includes / includes with
- Introduce concept of loops and using listitems.yaml
- Introduce contept of using listitems.yaml to have different data for each card
- Review completed homepage in PL

# Converting PL Components into Drupal
- Indentify how the Hero would translate to Drupal using Paragraphs
- Working with Paragraphs to Create Hero and Button paragrpah types
-- Explain reason to nest paragraph types for reuse and flexibility
- Add Hero paragraph to Homepage in Drupal
- Review output
- Create html.twig file for Hero
- Copy PL markup to html.twig
- Clear cache
- Review output to ensure it now matches PL Hero

## Converting Card to Drupal
- Media Card view mode template
- Review Current output
- Create drupal template
- Copy PL markup to drupal
- Review new output

### Media Teaser view mode
- Media Teaser view mode template
- Review Current output
- Create drupal template
- Copy PL markup to drupal
- Review new output

### Teaser view mode
- Teaser view mode template
- Review Current output
- Create drupal template
- Copy PL markup to drupal
- Review new output

## Creating News Section in Drupal
- Paragraph type News Section (entity reference, news content type, limit 4)
- Manage display will use News content types Card display
- Add the News Section to the Homepage
- Review

## Creating News SubSection in Drupal
- Explain how we use Views to display content not fields that allow for using display modes
- Review Updates view and Upcoming view
- Paragraph type News SubSection (view embed, limit 2)
-- Explain how we can use paragraphs to embed views
- Add the News SubSection to the Homepage
- Review
