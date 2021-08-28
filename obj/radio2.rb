class Radio
    def initialize (nombre, dial, transmitiendo)
        @nombre= nombre
        @dial = dial
        @transmitiendo = transmitiendo
        @programa = "Música"
        @locutor = 'Sin Locutor'
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

    def printProg
        @programa
    end

    def printLocutor
        @locutor
    end

    def cambiarPrograma (prog, loc)
        @programa = prog
        @locutor = loc
    end
end


def listarRadios (r)
    puts "---------------------------------------"
    puts "LISTA DE RADIOS AL AIRE EN ESTE MOMENTO"
    puts "---------------------------------------"
    for i in(0..(r.length - 1))
        if r[i].printTransmitiendo == "Si"
            puts "#{r[i].printDial.rjust(5)}  #{r[i].printNombre.ljust(20)} #{r[i].printProg.ljust(20)} #{r[i].printLocutor.ljust(25)} "
        end
    end
end

radios = Array.new()

rdo = Radio.new("Romántica","101.5","Si")
radios.push(rdo)

rdo = Radio.new("Carolina","99.3","No")
radios.push(rdo)

rdo = Radio.new("Rock & Pop","104.1","Si")
radios.push(rdo)

listarRadios (radios)

#n = radio1.printNombre
#d = radio1.printDial
#o = radio1.printTransmitiendo

