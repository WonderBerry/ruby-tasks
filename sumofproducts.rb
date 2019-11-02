=begin
Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом).
Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара.
На основе введенных данных требуетеся:
Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. 
Также вывести итоговую сумму за каждый товар.
Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end

product_data = {}
total_price = 0

while true do
  puts "Name product: (enter 'quit' to exit)"
  prt_name = gets.chomp.to_s
  if prt_name == "quit" then break
  end
  
  puts "Unit price for #{prt_name}: "
  unit_price = gets.chomp.to_f
  
  puts "Quantity: "
  amount_purchased = gets.chomp.to_f

  product_data[prt_name] = {unit_price => amount_purchased}
end

puts product_data

for i in product_data.keys do
  puts "Total price for #{i}: #{product_data[i].keys[0]*product_data[i].values[0]}"
  total_price += product_data[i].keys[0]*product_data[i].values[0]
end


puts "Total price of all products: #{total_price}"