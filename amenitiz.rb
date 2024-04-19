ITEMS = {
  "GR1": { name: "Green Tea", price: 3.11 },
  "SR1": { name: "Strawberry", price: 5.00 },
  "CF1": { name: "Coffee", price: 11.23 }
}

puts "******************************"
puts "******************************"
puts "******************************"
puts "Welcome to our marvellous app!"
puts "******************************"
puts "******************************"
puts "******************************"
puts ""
puts "Here are our products:"

ITEMS.each do |key, value|
  puts ""
  puts " · #{key} = #{value[:name]} - $#{value[:price]}"
end

puts ""
puts "Do you want to buy something? If so, please enter the code of the product. Right now we have an offer: buy two and get one for free!"
puts ""

basket = Hash.new(0)
total_price = 0

loop do
  user_choice = gets.chomp

  if user_choice != "GR1" && user_choice != "CF1" && user_choice != "SR1"
    puts "We don't have that product in the warehouse, sorry. Please, write the correct code."
  end


  case user_choice
  when "GR1", "SR1", "CF1"
    puts "How many?"
    product_choice = user_choice.to_sym
    product_name = ITEMS[product_choice][:name]
    product_price = ITEMS[product_choice][:price]

    quantity = gets.chomp.to_i

    if quantity > 2
      if product_choice == :CF1 && quantity >= 3
        total_price += (quantity * product_price) * (2.0 / 3)
      elsif product_choice == :SR1 && quantity >= 3
        total_price += quantity * 4.50
      else
        total_price += quantity * product_price
      end
    elsif product_choice == :GR1 && quantity == 2
      puts "Clever! You get one for free."
      total_price += product_price
    else
      total_price += product_price
    end

    basket[product_name] += quantity

    puts "You have bought #{quantity} units of #{product_name}. Your total price so far is: #{total_price}€."
    puts "If you want to buy something else, write the code of the product: GR1, SR1 or CF1. If you want to pay, just write 'exit'."
  when "exit"
    break
  end
end

puts "Your basket contains: "
basket.each do |product_name, quantity|
  puts "#{quantity} units of #{product_name}."
end
puts "Total price: #{total_price}€"
puts "Thank you for your shopping! See you soon, buddy!"
