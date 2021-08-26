
def dibujarArbol (adorno,lin,inv)
    for i in (1..lin) do
        if inv
            ind = (lin - i) +1
            espacio = (lin) - ((adorno.length * (lin-i))/2)
        else
            ind = i
            espacio = (lin) - (((adorno.length) * i)/2)
        end
        (lin-ind).times { print " "}
        ind.times { print "#{adorno} "}
        puts
    end
end

print "ingrese las líneas que tendrá el arbol :"
strlin = gets.chomp
lin = strlin.to_i
print "Desea el arbol invertido? (S para Si)"
strinv = gets.chomp
puts

dibujarArbol '*',lin,(strinv=="S") 

