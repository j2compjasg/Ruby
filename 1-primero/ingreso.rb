salir = false

while salir == false
    puts "ingrese el límite para el ciclo"
    str = " "
    str = gets.chomp
    limite = str.to_i
    puts limite
    i = 0
    while i <= limite
        puts i
        i = i + 1
    end
    puts "Desea Salir [S/N]"
    str = gets.chomp
    if str == "s"  
        salir = true 
    end
end