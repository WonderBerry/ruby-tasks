=begin
Квадратное уравнение. Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
  Если D > 0, то выводим дискриминант и 2 корня
  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
  Если D < 0, то выводим дискриминант и сообщение "Корней нет" (мнимые числа не рассматриваются)
=end

puts "Enter a:"
a = gets.chomp.to_i

puts "Enter b:"
b = gets.chomp.to_i

puts "Enter c:"
c = gets.chomp.to_i

unless a == 0
	d = b**2 - 4*a*c
	if d < 0 
		puts "Dicriminant: #{d}, no roots"
	elsif d == 0
		x = -b/2*a
		puts "Dicriminant: #{d}, x:#{x}"
	else
		d_root = Math.sqrt(d)
		x1 = -b+d_root/2*a
		x2 = -b-d_root/2*a
		puts "Dicriminant: #{d}, x1:#{x1}, x2:#{x2}"
	end
end