#2.1 Se tiene el siguiente hash:
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
# y se realiza la siguiente consulta para conocer los productos existentes:
puts "\n====Ejercicio 2.1======"
productos.each { |valor, producto| puts valor }
# Corrige el error para mostrar la información solicitada.

#2.2 Se quiere agregar un nuevo producto al hash:
puts "\n====Ejercicio 2.2===="
productos['cereal'] = 2200
# Corrige la instrucción para agregar el producto.
puts productos

#2.3 Se quiere actualizar el precio de la bebida:
puts "\n====Ejercicio 2.3===="
productos['bebida'] = 2000
puts productos
# Corrige la instrucción para actualizar el valor del producto existente.

#2.4 Convertir el hash en un array y guardarlo en una nueva variable
puts "\n====Ejercicio 2.4===="
array_productos = productos.to_a
print array_productos

#2.5 Eliminar el producto 'galletas' del hash.
puts "\n====Ejercicio 2.5===="
productos.delete('galletas')
puts productos