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

estdefault = Estados.new(0,"Pendiente")
estcancelado = Estados.new(1,"Cancelado")
emi = Cliente.new
emi = lc.buscarRut('76938242-9')

#puts emi.getNombre
#emi = Cliente.new('12884231-4','Cliente', Direccion.new(), giro.new())
#puts emi.getRut
#puts emi.getNombre
#gemi = Giro.new(66,"Servicios Generales")
#demi = Direccion.new(1,"Rincón del Diablo","666","","Estrella de la Mañana","Santiago","Metropolitana")
#emi = Cliente.new("12884231-4","Javier Salgado",demi,gemi)

#Se establece el dato del cliente

cli = Cliente.new
cli = lc.buscarRut('13255008-5')
puts cli.getNombre

#gvta = Giro.new(44,"Servicios Generales")
#dvta = Direccion.new(1,"Alameda","666","","Barrio Cívico","Santiago","Metropolitana")
#cl = Cliente.new("12884231-4","Javier Salgado",dvta,gvta)

fac = Factura.new(1,"30-08-2021",emi,cli,estdefault)

deta = Detfactura.new
deta.setLibre(10,"Super 8", 100)
fac.agregaDetalle(deta)

#deta = Detfactura.new()
deta.setLibre(5,"Berlin pequeño",500)
fac.agregaDetalle(deta)
#deta = Detfactura.new()

deta.setLibre(7,"Papas Fritas Lays 170 Gr",1100)
fac.agregaDetalle(deta)

#deta = Detfactura.new()
deta.setLibre(12,"Coca Cola 600cc",800)
fac.agregaDetalle(deta)

#lp.listado

#lc.listado
pr = Producto.new
pr = lp.buscarProdxid('4807204917242')
#puts pr.gProd
deta.setProd(1,pr)
fac.agregaDetalle(deta)

fac.imprimeFactura