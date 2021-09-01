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

Class Listacli
    def initialize
        @list = Array.new
    end

    def cargarCsv
        require 'csv'

        arch = 'D:\PFILES\productos.csv'
        CSV.foreach(arch, :headers => :true) do |row|
            g = Giro.new(1,row[2])
            dir = Direccion.new(0,row[3],row[4],row[5],row[6],row[7],"N/A")
            cl = Cliente.new(row[0],row[1],dir,g)
            #puts "#{pr.gCod} #{pr.gProd} #{pr.gPrecio}"
            @list.push(cl)
            #puts "#{row[0]} #{row[1]} #{row[2]} #{row[3]} #{row[4]} #{row[5]} #{row[6]} #{row[7]} " 
        end       #Cargo el arreglo desde un CSV
    end

    def listado
        @list.each do |p|
            puts "#{p.getRut.ljust(13)} #{p.getNombre.ljust(50)} "
        end
    end

end