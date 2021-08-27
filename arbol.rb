
def dibujarArbol (adorno,lin,inv)
    anchomayor = adorno.length * lin
    for i in (1..lin) do
        if inv
            ind = (lin - i) +1
            espacio = i
        else
            ind = i
            espacio = lin-i
            #espacio = (anchomayor) - (((adorno.length) * i)/2)
        end
        (espacio).times { print " "}
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

dibujarArbol '*',lin,((strinv=="S" || strinv =='s' )) 

