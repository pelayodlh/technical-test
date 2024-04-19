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
  puts "Do you want to buy something? If so, please enter the code of the product"

  ITEMS.each do |key, value|
    puts "#{key} = #{value[:name]} - $#{value[:price]}"
  end

  puts "Text 'several' if you want more than one product, please. Right now we have an offer: buy two and get one for free!"
  user_choice = gets.chomp

  case user_choice
  when "GR1"
    puts "Great! It's #{ITEMS[:GR1][:price]}€. Thank you and have a great day!"
  when "SR1"
    puts "Great! They are so tasty this year. It's #{ITEMS[:SR1][:price]}€. Thank you and have a great day!"
  when "CF1"
    puts "Great! Hope you sleep afterwards though. It's #{ITEMS[:CF1][:price]}€. Thank you and have a great day!"
  when "several"
    puts "Please, state the product"
    first_several_user_choice = gets.chomp
    if ["GR1", "SR1", "CF1"].include?(first_several_user_choice)
      puts "How many?"
      first_several_products_choice = gets.chomp.to_i
      if first_several_products_choice > 2
        if first_several_user_choice == "CF1" && first_several_products_choice >= 3
          total_price = (first_several_products_choice * ITEMS[first_several_user_choice.to_sym][:price]) * (2.0 / 3)
        elsif first_several_user_choice == "SR1" && first_several_products_choice >= 3
          total_price = first_several_products_choice * 4.50
        else
          total_price = first_several_products_choice * ITEMS[first_several_user_choice.to_sym][:price]
      end
    end
    puts "You have bought #{first_several_products_choice} #{ITEMS[first_several_user_choice.to_sym][:name]}. This would be your total price: #{total_price}€. Do you want to pay already? If so, write 'yes'."
    user_payment = gets.chomp
      if user_payment == "yes"
        puts "Thank you for your shopping! See you soon, buddy!"
      end
      until user_payment == "yes"
        puts "Do you want more products? Please, state which one do you want"
        second_several_user_choice = gets.chomp
        if ["GR1", "SR1", "CF1"].include?(second_several_user_choice)
          puts "How many?"
          second_several_products_choice = gets.chomp.to_i
          if second_several_products_choice > 2
            if second_several_user_choice == "CF1" && second_several_products_choice >= 3
              total_price += (second_several_products_choice * ITEMS[second_several_user_choice.to_sym][:price]) * (2.0 / 3)
            elsif second_several_user_choice == "SR1" && second_several_products_choice >= 3
              total_price += second_several_products_choice * 4.50
            else
              total_price += second_several_products_choice * ITEMS[second_several_user_choice.to_sym][:price]
            end
          end
          puts "You have bought #{first_several_products_choice} #{ITEMS[first_several_user_choice.to_sym][:name]} and #{second_several_products_choice} #{ITEMS[second_several_user_choice.to_sym][:name]}. This would be your total price: #{total_price}€.Do you want to pay already? If so, write 'yes'."
          user_payment = gets.chomp
          if user_payment == "yes"
            puts "Thank you for your shopping! See you soon, buddy!"
          end
        end
      end
    elsif several_products_choice == 2
      puts "Clever! You get one for free. Here's the total price: #{ITEMS[first_several_user_choice.to_sym][:price]}"
    end
  else
    puts "Sorry, we don't have that product in our warehouse"
  end

