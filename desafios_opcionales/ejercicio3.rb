alumnos = [{:nombre=>"Arturo", :edad=>"27", :comuna=>"Santiago", :genero=>"Masculino"},
{:nombre=>"Jose", :edad=>"23", :comuna=>"Santiago", :genero=>"Femenino"}]
opcion = 0
while opcion != 10 
  puts "Presione 1 para Registrar Alumnos "  
  puts "Presione 2 para Editar Alumno"
  puts "Presione 3 para Eliminar Alumno"
  puts "Presione 4 para Mostrar la cantidad de Personas del listado"
  puts "Presione 5 para Mostrar Comunas ingresadas"
  puts "Presione 6 para Mostrar listado de personas que tengan entre 20 y 25 años."
  puts "Presione 7 para Mostrar la suma de las edades de todas las personas"
  puts "Presione 8 para Mostrar el promedio de las edades del grupo."
  puts "Presione 9 para Mostrar dos listas de personas, una por cada género."
  puts "Presione 10 para Salir"
  opcion = gets.chomp.to_i
  system("clear")
  
  case opcion
    when 1
      puts "Ingrese Nombre"
      nombre = gets.chomp
      puts "Ingrese Edad"
      edad = gets.chomp
      puts "Ingrese Comuna"
      comuna = gets.chomp
      puts "Ingrese Género"
      genero = gets.chomp
      
      hash = {nombre: nombre, edad: edad, comuna: comuna, genero: genero}
      alumnos.push(hash)
      print "Se agregaron satisfactoriamente los datos!!!!\n"
      puts "El listado de alumnoss es el siguiente: #{alumnos} \n\n\n"
      
      when 2
        puts "Seleccione Nro de Alumno a actualizar"
        iterator=1
        alumnos.each do |datos| 
          puts "#{iterator} - #{datos[:nombre]}"
          iterator += 1
        end
        puts "----------------------------------------------------"
       
        dato = gets.chomp.to_i
        puts "Ingrese Edad"
        edad = gets.chomp.to_i
        alumnos[dato-1][:edad] = edad

        puts "Ingrese Comuna"
        comuna = gets.chomp
        alumnos[dato-1][:comuna] = comuna

        puts "Ingrese Género"
        genero = gets.chomp
        alumnos[dato-1][:genero] = genero

        puts "Los datos actualizados son: #{dato} - #{edad} - #{comuna} - #{genero} "
        puts "El estado actual del listado de alumnos es: #{alumnos} \n\n\n"
        
        when 3
          iterator=1
          alumnos.each do |datos| 
            puts "#{iterator} - #{datos[:nombre]}"
            iterator += 1
          end
          
          puts "Ingrese Número de Alumno a Eliminar"
          item = gets.chomp.to_i
          alumnos.delete_at(item-1)
          
          puts "Se ha eliminado satisfactoriamente el item #{item}!!!\n"
          puts "El estado actual del inventario es el siguiente: #{alumnos} \n\n\n"

        when 4
          puts "La cantidad de personas del listado de alumnos son: #{alumnos.count} \n\n"
        
        when 5
          array = []
          alumnos.each do |datos| 
            array.push(datos[:comuna])
          end
          array = array.uniq
            puts "El Listado de comunas ingresadas son: #{array}\n\n\n"
          
        when 6
          array = []
          alumnos.each do |datos| 
            if datos[:edad].to_i > 19 && datos[:edad].to_i < 25
              array.push(datos[:nombre])
            end
          end
          puts "Las listado de Personas que tienen entre 20 y 25 años es: #{array} \n\n "
        
        when 7
          acumulador = 0
          alumnos.each do |datos| 
            acumulador += datos[:edad].to_i
          end
          puts "La suma de las edades de todas las personas es: #{acumulador} \n\n"

        when 8
          acumulador = 0
          alumnos.each do |datos| 
            acumulador += datos[:edad].to_i
          end
          promedio = acumulador / (alumnos.length).to_f

          puts "El promedio de las edades del listado de alumnos es: #{promedio} \n\n"

        when 9
        agrupar = []
        agrupar.push(alumnos.group_by{|ele| ele[:genero] })
        
        puts "Agrupación por genero: #{agrupar} \n\n"+
        puts agrupar
        end
      end