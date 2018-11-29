# Rails Assessment
It's time to put our Rails know-how to the use.

## Objectives
+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, code and debug

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `rake db:migrate` and `rake db:seed` to get started.

## The Domain
You've just been hired by the 'NYC Pizza Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite spots and eats. To do this, we need a way to keep track of the gazillion NYC pizza restaurants and create custom pizzas for each location.

Luckily, another developer has already started the job. We have a controller, model and views to support the creation, listing and display of restaurants. Visiting `/restaurants` displays all of the restaurants recorded by members. Unfortunately we don't have a way for members to create their favorite pizzas (so, so sad) for each restaurant. **Each Restaurant can have several Pizzas on its menu and each Pizza belongs to the Restaurant**.

## Instructions / Deliverables

***To help you complete this assignment we listed the high level steps required to complete this assignment. Read through them carefully to get a sense of the requirements for this code challenge, and then tackle them one by one.***

1. Create the associations between models. You may have to alter the current schema to get your code working.

2. On the restaurants index page, a restaurant's name should link to the restaurant's show page.

3. The restaurant show page should include the restaurant's name (eg. PizzArte), its address, and a list of the pizzas it sells. The pizza should link to the pizza show page.

4. The pizza show page should have its name and ingredients.

5. As a visitor to the website, I should be able to create a new pizza with its name and ingredients.

6. The form should also allow each pizza to be created with only one of the existing restaurant.
