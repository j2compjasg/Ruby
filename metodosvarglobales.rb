principal = "SUMA DE NUMEROS"

puts principal

textos = "Ingresa un número y presiona ENTER"
puts textos
numero1 = gets.chomp

textos2 = "Ingresa otro número y presiona ENTER"
puts textos2

numero2 = gets.chomp

entero1 = numero1.to_i
entero2 = numero2.to_i


def suma(numero1,numero2)
    puts numero1+numero2
    return 'correcto'
end

puts (suma(entero1,entero2))

