require 'rails'
require 'csv'

class Producto
    def initialize 
        @codigo = ""
        @prod = ""
        @color = ""
        @tipo = ""
        @envase = ""
        @cantenv = 0
        @precio = 0
        @stock = 0
    end

    def gCod
        @codigo
    end

    def sCod(valor)
        @codigo = valor
    end

    def gProd
        @prod
    end

    def sProd(valor)
        @prod = valor
    end

    def gColor
        @color
    end

    def sColor(valor)
        @color = valor
    end

    def gTipo
        @tipo
    end

    def sTipo(valor)
        @tipo = valor
    end

    def gEnvase
        @envase
    end

    def sEnvase(valor)
        @envase = valor
    end

    def gCantenv
        @cantenv
    end

    def sCantenv(valor)
        @cantenv=valor
    end
    def gPrecio
        @precio
    end
    def sPrecio(valor)
        @precio = valor
    end
    def gStock
        @stock
    end
    def sStock(valor)
        @stock = valor
    end
end

class Listaprod
    def initialize
        @list = Array.new
    end

    def cargarCsv


        arch = 'D:\PFILES\productos.csv'
        CSV.foreach(arch, :headers => :true) do |row|
            pr = Producto.new()
            pr.sCod(row[0])
            pr.sProd(row[1].truncate(30,:separator => '..+'))
            pr.sColor(row[2])
            pr.sTipo(row[3])
            pr.sEnvase(row[4])
            pr.sCantenv(row[5])
            pr.sPrecio(row[6])
            pr.sStock(row[7])
            #puts "#{pr.gCod} #{pr.gProd} #{pr.gPrecio}"
            @list.push(pr)
            #puts "#{row[0]} #{row[1]} #{row[2]} #{row[3]} #{row[4]} #{row[5]} #{row[6]} #{row[7]} " 
        end       #Cargo el arreglo desde un CSV
    end

    def listado
        @list.each do |p|
            puts "#{p.gCod.ljust(15)} #{p.gProd.ljust(50)} $ #{format_number(p.gPrecio,0).rjust(8)} #{p.gStock.to_s.rjust(4)}"
        end
    end

    def buscarProdxid(id)
        @list.each do |p|
            if p.gCod == id
                return p
                break
            end
        end
    end
end