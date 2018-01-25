# Dados los siguientes array:
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
# Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }

meses = meses.zip(ventas).to_h
puts meses

# En base al hash generado:
# Invertir las llaves y los valores del hash.
puts "\nLos datos invertidos son:"
invertido = meses.invert
puts invertido

# Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
puts "\nMayor cantidad de ventas en el Mes de:"
valor = invertido.select {|k,v| k == invertido.keys.max }
puts valor.values
