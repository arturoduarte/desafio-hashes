# Dado el arreglo
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
# Se pide:
# Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
print nombres.select{ |x| x.length > 5 }
print "\n\n"
# Utilizando .map crear una arreglo con los nombres en minúscula.
arreglo = nombres.map{|i| i.downcase}
print arreglo
print "\n\n"

# Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
new_arreglo = nombres.select{ |x| x.start_with?('P') }
print new_arreglo
print "\n\n"

# Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
arreglo_unico = nombres.map{|i| i.length}
print arreglo_unico
print "\n\n"

# Utilizando .map y .gsub eliminar las vocales de todos los nombres.

sin_vocales = nombres.map{|i| i.gsub(/[AEIOUaeiou]/, '')}
print sin_vocales
print "\n\n"