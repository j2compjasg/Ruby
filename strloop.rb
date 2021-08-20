
str =""

puts "Ingrese el limite del ciclo"
str = gets.chomp

limite = str.to_i

for i in (1..limite)
    if i%2 == 0 then 
        puts i
    end
end

puts "ingresa un numero"
str = gets.chomp
num1 = str.to_i

puts "ingresa otro numero"
str = gets.chomp
num2 = str.to_i

for i in (num1..num2)
    puts i
end