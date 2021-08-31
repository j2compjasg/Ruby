class Estado
    def initialize(id,nombre)
        @id=id
        @nombre=nombre
    end
    def getId
        @id
    end
    def getNombre
        @nombre
    end
    def setId(valor)
        @id=valor
    end
    def setNombre(valor)
        @nombre=valor
    end
end
    
class Giro
    def initialize(id,descripcion)
        @id=id
        @descripcion=descripcion
    end
    def getId
        @id
    end
    def getDescripcion
        @descripcion
    end
    def setId(valor)
        @id=valor
    end
    def setDescripcion(valor)
        @descripcion=valor
    end
end
    
class Direccion
    def initialize(id,calle,numero)
        @id=id
        @calle=calle
        @numero=numero
    end
        def getId
    @id
    end
    def getCalle
        @calle
    end
    def getNumero
        @numero
    end
    def setId(valor)
        @id=valor
    end
    def setCalle(valor)
        @calle=valor
    end
    def setNumero(valor)
        @numero=valor
    end
end
    
class Cliente
    def initialize(rut,nombre,direccion,giro)
        @rut=rut
        @nombre=nombre
        @direccion=direccion
        @giro=giro
    end
    def getRut
        @rut
    end
    def getNombre
        @nombre
    end
    def getDireccion
        @direccion
    end
    def getGiro
        @giro
    end
    def setRut(valor)
        @rut=valor
    end
    def setNombre(valor)
        @nombre=valor
    end
    def setDireccion(valor)
        @direccion=valor
    end
    def setGiro(valor)
        @giro=valor
    end
end
    
    d1=Direccion.new(1,"Alameda",123)
    g1=Giro.new(70,"Agricultura")
    c1=Cliente.new("1-2","Juan Perez",d1,g1)
    puts c1.getRut
    puts c1.getNombre
    puts c1.getDireccion.getId
    puts c1.getDireccion.getCalle
    puts c1.getDireccion.getNumero
    puts c1.getGiro.getId
    puts c1.getGiro.getDescripcion