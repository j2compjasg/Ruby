class Radio
    def initialize (nombre, dial, transmitiendo)
        @nombre= nombre
        @dial = dial
        @transmitiendo = transmitiendo
    end

    def printNombre
        @nombre
    end

    def printDial
        @dial
    end

    def printTransmitiendo
        @transmitiendo
    end


end

radio1 = Radio.new("Romántica","101.5","Si")

n = radio1.printNombre
d = radio1.printDial
o = radio1.printTransmitiendo

puts "El Nombre de la Radio es #{n}"
puts "El dial de la Radio es #{d}"
puts "¿Está la Radio Transmitiendo?#{o}"