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
[Homepage](https://codepen.io/cchumley/full/PmPPMb/)

## Creating our first component (Hero)
- Step One Review [Hero](https://codepen.io/cchumley/full/eWppEy)
- Create markup
- Review final Completed example [Hero](https://codepen.io/cchumley/pen/eWppEy)
- Create component in PL
- Using `*.yaml` to replace static content with variables
- Review final component in PL [Converted markup to Twig](https://gist.github.com/chazchumley/3ddcf9d7374a29e179e5a50e39a5aeb4)
-- Create [hero-bg-image.yaml](https://gist.github.com/chazchumley/ba112f33855a10d686c194f571a79cc9)
- Create dependent button component in PL [Convert markup to Twig](https://gist.github.com/chazchumley/146d18bee71ef10395dd6351ae3347d6)
-- Create [button.yaml](https://gist.github.com/chazchumley/968e0c2f326c176b988f74ceed3a6863)

## Creating our second component (Media Card)
- Step One Review [Media Card](https://codepen.io/cchumley/full/aWvvKR/)
- Create markup
- Review final Completed example [Media Card](https://codepen.io/cchumley/pen/aWvvKR)
- Create component in PL [Convert markup to Twig](https://gist.github.com/chazchumley/92c201754b1c95f0f06d97b2b96f5d1e)
- [Media Card Revised](https://gist.github.com/chazchumley/6fde14bbf5b5cd159ac76cfc1805ee99) to handle multiple items

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
