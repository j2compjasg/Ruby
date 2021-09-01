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

class Detfactura
    def initialize 
        @cant = 0
        @codpro = ""
        @descr = ""
        @valor = 0
    end
    def clonar(dtf)
        @cant = dtf.getCant
        @codpro = dtf.getCod
        @descr = dtf.getDescr
        @valor = dtf.getValor
    end
    def setProd(cant,prod)
        @cant = cant
        @codpro = prod.gCod
        @descr = prod.gProd
        @valor = prod.gPrecio.to_i
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
    def getCod
        @codpro
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
        df = Detfactura.new
        df.clonar det
        @detalle.push (df)
        #puts " cant #{df.getCant} descr #{df.getDescr} valor #{df.getValor}" 
        calculaTotales
    end

    def calculaTotales
        totneto = 0
        @detalle.each do |det|
            totneto += det.getCant * det.getValor
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
            puts "#{det.getCant.to_s.rjust(5)} #{det.getDescr.ljust(30)} $#{format_number(det.getValor,0).rjust(8)}  $#{format_number(det.getSubt,0).rjust(8)}" 
        end
        puts "─────────────────────────────────────────────────────────"
        print "Total Neto : $ ".rjust(50)
        puts format_number(@neto.to_s,0).rjust(7)
        print "IVA        : $ ".rjust(50)
        puts format_number(@iva.to_s,0).rjust(7)
        print "Total      : $ ".rjust(50)
        puts format_number(@total.to_s,0).rjust(7)
        puts "─────────────────────────────────────────────────────────"
    end        
end
