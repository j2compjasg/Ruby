class Estados
    def initialize (id,nombre)
        @id = id
        @nombre = nombre
    end
    def getId
        @id
    end
    def getNombre
        @nombre
    end
    def setId(valor)
        @id = valor
    end
    def setNombre(valor)
        @nombre = valor
    end
end

class Giro
    def initialize (id,nomgiro)
        @id = id
        @nombre = nomgiro
    end
    def getId
        @id
    end
    def getNombre
        @nombre
    end
    def setId(valor)
        @id = valor
    end
    def setNombre(valor)
        @nombre = valor
    end
end

class Direccion

    def initialize (id,calle,num,dep,villa,comuna,region)
        @id = id
        @calle = calle
        @num = num
        @dep = dep
        @villa = villa
        @comuna = comuna
        @region = region
    end

    def getId
        @id
    end

    def getCalle
        @nombre
    end
    def getNum
        @num
    end
    def getDep
        @dep
    end
    def getVilla
        @villa
    end

    def getComuna
        @comuna
    end

    def getRegion
        @region
    end

    def getDir
        return "#{@calle} #{@num} #{@dep} #{@villa} - #{@comuna}"
    end

    def setId(valor)
        @id = valor
    end

    def setCalle(valor)
        @calle = valor
    end
end

class Cliente
    def initialize (rut,razsoc,dir,giro)
        @rut = rut
        @razsoc = razsoc
        @dir = dir
        @giro = giro
    end

    def getRut
        @rut
    end

    def getNombre
        @razsoc
    end

    def getDir
        @dir
    end

    def getGiro
        @giro
    end
end

class Productos
    def initialize
        list = Array.new
    end

    def cargarCsv(archivo)
        #Cargo el arreglo desde un CSV
    end

    def buscarProdxid(id)
        list.each do |p|
            if p.getId = id
                return p
                break
            end
        end
    end if
end


class Producto

    def initialize 
        @codigo = ""
        @nombre = ""
        @precio = 0
        @stock = 0
    end

    def gcodigo
        @codigo
    end

    def gnombre
        @codigo
    end

    def gprecio
        @precio
    end

    def descr
        return "#{@codigo.to_s.rjust(4)} #{@nombre.ljust(20)} #{@precio.to_s}"
    end
end

class Detfactura
    def initialize 
        @cant = 0
        @codpro = ""
        @descr = ""
        @valor = 0
    end
    def setProd(cant,prod)
        @cant = cant
        @descr = prod.getDescr
        @valor = prod.getValor
    end
    def setLibre(cant,descr,vunit)
        @cant = cant
        @codpro = ""
        @descr = descr
        @valor = vunit
    end
    def getCant
        @cant
    end
    def getDescr
        @descr
    end
    def getValor
        @valor
    end
    def getSubt()
        return (@cant * @valor)
    end
end

class Factura
    def initialize (folio,fecha,emisor,cliente,estado)
        @folio = folio
        @fecha = fecha
        @emisor = emisor
        @cliente = cliente
        @estado = estado
        @neto = 0
        @iva = 0
        @total = 0
        @saldo = 0
        @detalle = Array.new()
    end

    def agregaDetalle(det)
        @detalle.push (det)
        calculaTotales
    end

    def calculaTotales
        totneto = 0
        @detalle.each do |det|
            #puts " cant #{det["cant"]} descr #{det["descr"]} valor #{det["VUnit"]}" 
            totneto += det["cant"] * det["VUnit"]
        end
        @neto = totneto
        @iva = totneto * 0.19
        @total = totneto + @iva 
    end

    def getNeto
        @neto
    end

    def getIva
        @iva
    end

    def getTotal
        @total
    end

    def imprimeFactura
        puts
        puts "────────────────────────────────"
        puts @emisor.getRut
        puts @emisor.getNombre
        puts "────────────────────────────────"
        puts "FACTURA DE VENTA N° #{@folio.to_s.rjust(7)}"
        puts "────────────────────────────────"
        puts "RUT Cliente : #{@cliente.getRut}"
        puts "Razón Social: #{@cliente.getNombre}"
        puts "Dirección   : #{@cliente.getDir.getDir} "
        puts "Giro        : #{@cliente.getGiro.getNombre}"
        puts "─────────────────────────────────────────────────────────"
        puts "DETALLE DE FACTURA"
        puts "─────────────────────────────────────────────────────────"

        @detalle.each do |det|
            puts "#{det["cant"].to_s.rjust(6)} #{det["descr"].ljust(30)} $#{format_number(det["VUnit"],0).rjust(8)}" 
        end
        puts "─────────────────────────────────────────────────────────"
        print "Total Neto : $ ".rjust(40)
        puts format_number(@neto.to_s,0).rjust(7)
        print "IVA        : $ ".rjust(40)
        puts format_number(@iva.to_s,0).rjust(7)
        print "Total      : $ ".rjust(40)
        puts format_number(@total.to_s,0).rjust(7)
        puts "─────────────────────────────────────────────────────────"
    end        
end

def format_number(number,dec)
    precision = 0
    if dec > 0 
        precision = dec
    end
  #  puts "NUMERO INICIAL #{number}"
    if dec > 0 then 
        number = number.round(precision)
 #       puts "truncado de numero en #{number}"
    end
    todo, decimal = number.to_s.split(".")
    strdec = decimal.to_s
#    puts "ENTERO = #{todo} DECIMAL = #{strdec} PRECISION = #{dec}"
    for i in(strdec.length..dec-1) 
        strdec += "0"
    end
    num_groups = todo.chars.to_a.reverse.each_slice(3)
    todo_y_coma = num_groups.map(&:join).join(',').reverse
    if precision > 0 then 
        return [todo_y_coma, strdec].compact.join(".")
    else
        return todo_y_coma
    end
end

#INICIO DE EJECUCION
#-------------------------------

#Se establecen los datos del emisor de Facturas

estdefault = Estados.new(0,"Pendiente")
estcancelado = Estados.new(1,"Cancelado")

gemi = Giro.new(66,"Servicios Generales")
demi = Direccion.new(1,"Rincón del Diablo","666","","Estrella de la Mañana","Santiago","Metropolitana")
emi = Cliente.new("12884231-4","Javier Salgado",demi,gemi)

#Se establece el dato del cliente

gvta = Giro.new(44,"Servicios Generales")
dvta = Direccion.new(1,"Alameda","666","","Barrio Cívico","Santiago","Metropolitana")
cl = Cliente.new("12884231-4","Javier Salgado",dvta,gvta)

fac = Factura.new(1,"30-08-2021",emi,cl,estdefault)

fac.agregaDetalle(10,"Super 8",100)
fac.agregaDetalle(5,"Berlin pequeño",500)
fac.agregaDetalle(7,"Papas Fritas Lays 170 Gr",1100)
fac.agregaDetalle(12,"Coca Cola 600cc",800)



fac.imprimeFactura

df = Detfactura.new()


