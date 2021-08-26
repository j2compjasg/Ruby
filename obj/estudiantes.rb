class Estudiante
    def initialize (nombre,carrera,edad)
        @nombre = nombre
        @carrera = carrera
        @edad = edad
    end

    def getNombre
        @nombre
    end

    def getCarrera
        @carrera
    end

    def getEdad
        @edad
    end

    def setNombre(valor)
        @nombre = valor
    end

    def setCarrera(valor)
        @carrera = valor
    end

    def setEdad(valor)
        @edad = valor

end

estudiante = Estudiante.new("Mario Santelices", "Periodismo", 21)


estudiante.setNombre("Carlos Zamorano")
estudiante.setCarrera("Arquitectura")
estudiante.setEdad(22)

#usa los métodos del accesor, accedemos a los métodos

n = estudiante.getNombre()
c = estudiante.getCarrera()
e = estudiante.getEdad()

puts "el nombre del estudiante es #{n}"
puts "la carrera del estudiante es #{c}"
puts "la edad del estudiante es #{e}"


end 