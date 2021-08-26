class Factura
    def initialize (nf,fecha,rut)
        @nf = nf
        @fecha = fecha
        @rut = rut
        @neto = 0
        @iva = 0
        @total = 0
        @detalle = Array.new
    end

    def agregaDetalle(cant,descr,vunit)
        tmpdet = Hash.new 
        tmpdet = {"cant" => cant, "descr" => descr, "VUnit"=> vunit}
        @detalle.push (tmpdet)
        calculaTotales
    end

    def calculaTotales
        totneto = 0
        @detalle.each do |det|
            puts " cant #{det["cant"]} descr #{det["descr"]} valor #{det["VUnit"]}" 
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
end

fac = Factura.new(1,"25/08/2021","12884231-4")
fac.agregaDetalle(10,"Super 8", 100)

n = fac.getNeto
i = fac.getIva
t = fac.getTotal

puts "Total Neto = #{n} "
puts "Total IVA  = #{i} "
puts "TOTAL = #{t}"
