class Giro
    def self.initialize
        @id = 0
        @nombre = ''
    end
    def cargar(id,nomgiro)
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

    def self.initialize
        @id = 0
        @calle = ''
        @num = ''
        @dep = ''
        @villa = ''
        @comuna = ''
        @region = ''
    end

    def cargar(id,calle,num,dep,villa,comuna,region)
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

    def self.initialize
        @rut = ''
        @razsoc = ''
        @dir = dir.new
        @giro = giro.new
    end

    def cargar(rut,razsoc,dir,giro)
        @rut = rut
        @razsoc = razsoc
        @dir.cargar(dir.getId, dir.getCalle, dir.getNum, dir.getDep, dir.getVilla, dir.getComuna, dir.getRegion)
        @giro.cargar(giro.getid, giro.getNombre)
    end

    def getRut
        @rut
    end

    def setRut(valor)
        @rut = valor
    end

    def getNombre
        @razsoc
    end

    def setNombre(valor)
        @razsoc = valor
    end

    def getDir
        @dir
    end

    def setDir(dir)
        @dir = dir
    end 

    def getGiro
        @giro
    end

    def setGiro(valor)
        @giro = valor
    end
end

class Listacli
    def initialize
        @list = Array.new
        cargarCsv
    end

    def cargarCsv
        require 'csv'
        arch = File.expand_path('clientes.csv')
        #arch = 'facturacion\clientes.csv'
        CSV.foreach(arch, :headers => :true) do |row|
            gi = Giro.new
            gi.cargar(1,row[2])
            di = Direccion.new
            di.cargar(0,row[3],row[4],row[5],row[6],row[7],"N/A")
            cl = Cliente.new
            puts "#{gi.getId} #{gi.getNombre}"
            #cl.cargar(row[0],row[1],di,gi)
            
            #puts "#{pr.gCod} #{pr.gProd} #{pr.gPrecio}"
            @list.push(cl)
            #puts "#{row[0]} #{row[1]} #{row[2]} #{row[3]} #{row[4]} #{row[5]} #{row[6]} #{row[7]} " 
        end     
    end

    def buscarRut(rut)
        @list.each do |cl|
            if cl.getRut == rut
                return cl
                break
            end
        end
        
    end

    def listado
        @list.each do |p|
            puts "#{p.getRut.ljust(13)} #{p.getNombre.ljust(50)} "
        end
    end
end