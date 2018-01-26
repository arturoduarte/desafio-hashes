# Dado el array:
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
b = a.map {|datos| datos + 1}
print "#{b}\n\n"

# Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.
b = a.map {|datos| datos.to_f}
print "#{b}\n\n"

# Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
b = a.map {|datos| datos.to_s}
print "#{b}\n\n"

# Utilizando reject descartar todos los elementos menores a 5 en el array.
b = a.reject{ |x| x < 5 }
print "#{b}\n\n"

# Utilizando select descartar todos los elementos mayores a 5 en el array.
b = a.select{ |x| x < 5 }
print "#{b}\n\n"

# Utilizando inject obtener la suma de todos los elementos del array.
b = a.inject(0) { |sum, x| sum + x }
print "#{b}\n\n"

# Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
b = a.group_by { |ele| ele.even?}
print "#{b}\n\n"

# Utilizando group_by agrupar todos los números mayores y menores que 6.
b = a.group_by { |ele| ele < 6}
print "#{b}\n\n"