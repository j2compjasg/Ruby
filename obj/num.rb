class Numero
    def initialize (numero1,numero2,numero3)
        @numero1 = numero1
        @numero2 = numero2
        @numero3 = numero3
    end


    def getNumero1
        @numero1
    end

    def getNumero2
        @numero2
    end

    def getNumero3
        @numero3
    end

    def setNumero1 (valor)
        @numero1 = valor
    end

    def setNumero2 (valor)
        @numero2 = valor
    end

    def setNumero3 (valor)
        @numero3 = valor
    end

    def getPromedio
        (@numero1 + @numero2 + @numero3)/3
    end

end

def mostrar(n)
    puts "Numero 1 = #{n.getNumero1}"
    puts "Numero 2 = #{n.getNumero2}"
    puts "Numero 3 = #{n.getNumero3}"
end 

numero = Numero.new(10,25,30)

mostrar (numero)

numero.setNumero1(2)
numero.setNumero2(4)
numero.setNumero3(6)

mostrar(numero)

prom = numero.getPromedio()
puts "El Promedio es #{prom}"
