
arr = (1..200).to_a

puts "De los numeros del 1 al 200 listaré los números"
puts "divisibles por"

str = gets.chomp
divi = str.to_i

for el in arr
    if el % divi == 0 then    # imprimer solo los elementos divisibles por el numero ingresado
        print "#{el} "
    end
end

arr.each { |ind| print ind }
