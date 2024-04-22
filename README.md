# Amenitiz test!

### Objectives

The goal was to build a working cash register app able to process several orders and products.

Three conditions, though:

- There's a buy-one-get-one-free offer regarding green tea.
- If the user buys 3 or more strawberries, the price should drop to 4.50€.
- If the user buys 3 or more coffees, the price of all coffees should drop to 2/3 of the original price.

### Language

Ruby

### Approach

At first, after defining the hash and the first lines of the CLI app, I tried to build the cash register through if statements. However, after adding a couple of products, the code got messy: it was too long and too complex for what was asked, as it required to repeat every if statement every time for all the options.

Then I decided to create a loop (so the if statament had to be written only once) to be able to go through the app until the user wanted to stop (writing 'exit'). That helped in the refactoring process, creating a cleaner code. This version is also cleaner because it asks the customer directly how many products he/she wants; before, the customer had to write 'several' to get the option of buying more than one unit of any product. Finally, the code got cleaner after assigning some variables.

Finally, I created a 'basket' hash to update the basket of products bought by the user. It shows the products chosen and its quantity, as well as the total price.

I believe that with this architecture the application is easy to update and to improve.

The program has been checked following the TDD guidelines.
