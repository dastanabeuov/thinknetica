#Площадь треугольника. Площадь треугольника можно вычилсить,
#зная его основание (a) и высоту (h) по формуле: 1/2*a*h.
#Программа должна запрашивать основание и высоту треуголиника и возвращать его площадь.

puts "Напишите основание треугольника"
base = gets.to_f

puts "Напишите высоту треугольника"
height = gets.to_f

puts "Площадь треугольника: #{0.5 * (base * height)}"
