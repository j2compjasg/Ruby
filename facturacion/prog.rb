load 'D:\projlp\Ruby\facturacion\clcli.rb'
load 'D:\projlp\Ruby\facturacion\clprod.rb'
load 'D:\projlp\Ruby\facturacion\clfact.rb'
load 'D:\projlp\Ruby\facturacion\metgen.rb'

system('cls')
print "Cargando Productos..."
lp = Listaprod.new()
puts "OK"
print "Cargando Clientes..."
lc = Listacli.new()
puts "OK"

