f=5
c=10
minas=30

def crearArreglo(f,c)
    z=Array.new(f,' ')
    for i in (0..f-1)
        z[i]=Array.new(c,' ')
    end
    return z
end

def posicionarMinas(minas,f,c,z)
    for i in (1..minas)
        fila=rand(0..f-1)
        columna=rand(0..c-1)
        z[fila][columna] = "X"
    end
    return z
end

def imprimirTablero(z,f)
    for i in (0..f-1)
        print z[i]
        puts ""
    end
end

def hacerTodo(z,f,c,minas)
    z=crearArreglo(f,c)
    z=posicionarMinas(minas,f,c,z)
    imprimirTablero(z,f)
    puts "*******************************"
end

tablero=10
z=Array.new(tablero,' ')
for i in (0..tablero-1)
z[i]=hacerTodo(z,f,c,minas)
end