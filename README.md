# Amenitiz test!

### Objectives

The goal was to build a working cash register app able to process several orders and products. 

Three conditions, though: 

- There's a buy-one-get-one-free offer regarding green tea.
- If the user buys 3 or more strawberries, the price should drop to 4.50€.
- If the user buys 3 or more coffees, the price of all coffees should drop to 2/3 of the original price.

### Approach

At first, after defining the hash and the first lines of the CLI app, I tried to build the cash register through if statements. However, after adding a couple of products, the code got messy.
It was too long and too complex for what it was asked. I also decided to create a loop to be able to go through the app until the user wanted to stop. That helped in the refactoring process, creating a cleaner code.
