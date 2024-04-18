ITEMS = {
  "GR1": { name: "Green Tea", price: 3.11 },
  "SR1": { name: "Strawberry", price: 5.00 },
  "CF1": { name: "Coffee", price: 11.23 }
}

green_tea_price = ITEMS[:GR1][:price]
strawberry_price = ITEMS[:SR1][:price]
coffee_price = ITEMS[:CF1][:price]

green_tea_name = ITEMS[:GR1][:price]
strawberry_name = ITEMS[:SR1][:price]
coffee_name = ITEMS[:CF1][:price]

while user_choice != "exit"

  puts "Welcome to our marvellous app! Do you want to buy something? If so, please enter the code of the product"

    ITEMS.each do |key, value|
      puts "#{key} = #{value[:name]} - $#{value[:price]}"
    end

  puts "Text 'several' if you want more than one product, please. Right now we have an offer: buy two and get one for free!"
  user_choice = gets.chomp

  case user_choice
  when "GR1"
    puts "Great! It's #{green_tea_price}€"
  when "SR1"
    puts "Great! They are so tasty this year. It's #{strawberry_price}€"
  when "CF1"
    puts "Great! Hope you sleep afterwards though. It's #{coffee_price}€"
  when "several"
    if user_choice == 
    end
  end

end
