

adorno = " *"
print "ingrese las líneas que tendrá el arbol :"
strlin = gets.chomp
lin = strlin.to_i
puts
anchomayor = adorno.length * lin

for i in (0..lin -1) do
    espacio = (anchomayor/2) - ((adorno.length * (lin-i))/2)
#    print "Lin = #{lin} I = #{i} espacio #{espacio}"
    espacio.times { print " "}
    (lin - i).times { print adorno}
    puts
end