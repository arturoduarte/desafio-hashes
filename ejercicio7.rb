# Se tiene un hash con el inventario de un negocio de computadores.
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
# Se pide:

# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
opcion = 0
while opcion != 7 
  puts "Presione 1 para Agregar un item con stock "  
  puts "Presione 2 para Eliminar item"
  puts "Presione 3 para Actualizar item y stock"
  puts "Presione 4 para Visualizar el stock total"
  puts "Presione 5 para Visualizar el item con mayor stock"
  puts "Presione 6 para Consultar item"
  puts "Presione 7 para Salir"
  opcion = gets.chomp.to_i
  system("clear")
  case opcion
when 1
  puts "Ingrese nuevo Item con Stock, separados por(,)"
  item_nuevo = gets.chomp
  item_nuevo = item_nuevo.split(',')
  inventario[(item_nuevo.first).to_sym] = item_nuevo.last.to_i
  print "Se agregó satisfactoriamente el item = #{item_nuevo}!!!!\n"
  puts "El estado actual del inventario es el siguiente: #{inventario} \n\n\n"
  
when 2
  iterator=1
  inventario.each_key do |key| 
    puts "#{iterator} - #{key}"
    iterator += 1
  end

  puts "Ingrese Item a Eliminar"
  item = gets.chomp.to_i - 1
  keys = inventario.keys
  # puts "Las Claves son == #{keys}"
  # puts "Los Items son == #{keys[item]} "
  
  inventario.delete(keys[item].to_sym)

  puts "Se ha eliminado satisfactoriamente el item #{item+1} - #{keys[item].to_sym}!!!\n"
  puts "El estado actual del inventario es el siguiente: #{inventario} \n\n\n"
  
when 3
  puts "Seleccione el item a actualizar de entre las siguientes opciones"
  puts inventario.keys
  puts "----------------------------------------------------"
  respuesta = false
  while respuesta == false
    item = gets.chomp
    respuesta = inventario.has_key?(item.to_sym)  
    system("clear")
    puts "Favor ingrese un producto existente"    
  end
    system("clear")
    puts "Ingrese nuevo Stock"
    stock = gets.chomp
    inventario[item.to_sym] = stock.to_i
    system("clear")
    puts "Los datos actualizados son: #{item} - #{stock} "
    puts "El estado actual del inventario es el siguiente: "
    puts "#{inventario} \n\n\n"
  
when 4
  stock = 0
  inventario.each do |k,v|
    stock += v
  end
  system("clear")
  puts "El stock total de todos los productos es: #{stock} \n\n\n"
  
when 5
  mayor = inventario.select {|k,v| v == inventario.values.max }
  puts "El item con mayor cantidad de stock es:  #{mayor.keys} con #{mayor.values} unidades \n\n\n"
  
when 6
  puts "Ingrese producto a buscar"
  producto = gets.chomp
  respuesta = inventario.has_key?(producto.to_sym)  
  if respuesta
    puts "Si"
  else
    puts "No"
  end
  puts "\n\n\n"

  
  
end

end