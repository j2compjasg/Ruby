f=15
c=15
minas=30
fila=-1
columna=-1

def posicionarMinas(z,minas)
(1..minas).each { |i| z[rand(0..z.length-1)][rand(0..z[0].length-1)] = "X" }
return z
end

def crearArreglo(f,c,minas)
z=Array.new(f,'')
for i in (0..f-1)
z[i]=Array.new(c,' ')
end
posicionarMinas(z,minas)
return z
end

def imprimirTablero(z,todo)
r=("A"..(64+z[0].length).chr).to_a
print " "
for i in r
print i.to_s+" "
end
puts ""
for i in (0..z.length-1)
print ((i<=9)? " ":"")+i.to_s
if todo
print z[i]
else
print z[i].map { |x| x=='X'? ' ': x }
end
puts ""
end
end

def contarMinas(z,fila,columna)
n=0
if fila>=0 and fila<z.length and columna>=0 and columna<z[0].length
if z[fila][columna]==' '
f=z.length
c=z[0].length
n+=(fila>0 and columna>0) ? ((z[fila-1][columna-1]=="X") ? 1: 0): 0;
n+=(fila>0) ? ((z[fila-1][columna]=="X") ? 1: 0): 0;
n+=(fila>0 and columna<c-1) ? ((z[fila-1][columna+1]=="X") ? 1: 0): 0;
n+=(columna>0) ? ((z[fila][columna-1]=="X") ? 1: 0): 0;
n+=(columna<c-1) ? ((z[fila][columna+1]=="X") ? 1: 0): 0;
n+=(fila<f-1 and columna>0) ? ((z[fila+1][columna-1]=="X") ? 1: 0): 0;
n+=(fila<f-1) ? ((z[fila+1][columna]=="X") ? 1: 0): 0;
n+=(fila<f-1 and columna<c-1) ? ((z[fila+1][columna+1]=="X") ? 1: 0): 0;
z[fila][columna]=n.to_s
if n==0
contarMinas(z,fila-1,columna-1)
contarMinas(z,fila-1,columna)
contarMinas(z,fila-1,columna+1)
contarMinas(z,fila,columna-1)
contarMinas(z,fila,columna+1)
contarMinas(z,fila+1,columna-1)
contarMinas(z,fila+1,columna)
contarMinas(z,fila+1,columna+1)
end
end
end
return n;
end

z=crearArreglo(f,c,minas)

loop do
imprimirTablero(z,false)

loop do
print "Fila:";
fila=gets.to_i
if fila==-1
exit(1)
end
if fila>=0 and fila<z.length
break;
end
end

loop do
print "Columna:";
columna=gets.to_i
if columna>=0 and columna<z[0].length
break;
end
end

if z[fila][columna]=="X"
imprimirTablero(z,true)
puts "Perdiste"
break;
else
n=contarMinas(z,fila,columna)
end
z[fila][columna]=n.to_s
puts "Bombas="+n.to_s
end