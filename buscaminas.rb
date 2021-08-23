require 'matrix'

f=15
c=10

minas = 30

def crearTablero(f,c)
    z=Array.new(f,' ')

    for i in (0..f-1)
        z[i]=Array.new(c,' ')
    end
    return z
end

def posicionarMinas(z,f,c,minas)
    for i in (1..minas)
        fila = rand(1..f-1)
        columna = rand(1..c-1)
        z[fila][columna] = "X"
    end
end
z = crearTablero(10,10)

posicionarMinas (z,10,10,25)
puts z