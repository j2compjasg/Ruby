


adorno = " *"
print "ingrese las líneas que tendrá el arbol :"
strlin = gets.chomp
lin = strlin.to_i
puts

anchomayor = adorno.length * lin
#puts anchomayor
for i in (1..lin) do
    espacio = (anchomayor/2) - (((adorno.length) * i)/2)
#    print "Lin = #{lin} I = #{i} espacio #{espacio}"
        espacio.times { print " "}
    i.times { print adorno}
    puts
end