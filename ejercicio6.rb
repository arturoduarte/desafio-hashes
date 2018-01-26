# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts "Obtener el plato mas caro."
valor = restaurant_menu.select {|k,v| v == restaurant_menu.values.max }
puts valor.keys

puts "\nObtener el plato mas barato."
valor = restaurant_menu.select {|k,v| v == restaurant_menu.values.min }
puts valor.keys

puts "\nSacar el promedio del valor de los platos."
acumulador = 0
restaurant_menu.each do |key ,value|
	acumulador += value
end
acumulador = acumulador / restaurant_menu.count.to_f
puts "El promedio de las edades es #{acumulador}"

puts "\nCrear un arreglo con solo los nombres de los platos."
platos = (restaurant_menu.keys).to_a
puts "Los platos son = #{platos}"

puts "\nCrear un arreglo con solo los valores de los platos."
valores = (restaurant_menu.values).to_a
puts "Los valores son = #{valores}"

puts "\nModificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19)."
restaurant_menu.each do |key ,value|
	restaurant_menu[key] = value * 1.19
end
print restaurant_menu

puts "\n\nDar descuento del 20% para los platos que tengan un nombre de más 1 una palabra."
restaurant_menu.each do |key ,value|
	if key.include?(' ') 
		restaurant_menu["#{key}"] = (value * 0.2) + value
	end
end

puts "Nuevos platos con descuento e IVA inlcuidas = #{restaurant_menu}" 

