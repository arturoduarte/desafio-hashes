# Dado el hash:
h = {"x": 1, "y":2}

puts "\nAgregar el string z con el valor 3."
h['z'] = 3
puts h

puts "\nCambiar el valor de x por 5."
h[:x] = 5
puts h

puts "\nEliminar la clave y"
h.delete(:y)
puts h

puts "\nSi el hash tiene una clave llamada z mostrar en pantalla yeeah."
h.each { |key, value| puts "yeaa" if key == 'z' }

puts "Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores"
puts h.invert


