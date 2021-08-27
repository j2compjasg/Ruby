class Tablero

    def initialize(filas,columnas)
    @z=crearTablero(filas,columnas)
    @f=filas
    @c=columnas
    imprimirTablero()
    end
    
    def getData
    @z
    end
    
    def crearTablero(f,c)
    z=Array.new(f+1,'')
    for i in (0..f)
    celdas=[]
    for j in (0..c+1)
    celdas.push((j==0 or j==c+1 or i==f)? 1: 0)
    end
    z[i]=celdas
    end
    return z
    end
    def imprimirTablero()
    for i in (0..@z.length-1)
    print ((i<=9)? " ":"")+i.to_s
    print @z[i]
    puts ""
    end
    end
    def pintarPieza(pieza,f,c,tipo)
    for i in (0..2)
    for j in (0..2)
    if pieza[i][j]==1
    @z[f+i][c+j]=tipo
    end
    end
    end
    end
    end
    
    class Piezas
    def initialize()
    @z=[[[1,0,0],[0,0,0],[0,0,0]],[[1,1,0],[1,1,0],[0,0,0]],[[1,0,0],[1,1,0],[0,1,0]],[[1,1,1],[1,0,1],[0,0,0]],[[1,0,0],[1,0,0],[1,0,0]],[[1,0,0],[1,0,0],[1,1,0]],[[1,1,1],[1,1,1],[1,1,1]],[[0,1,0],[1,1,1],[0,0,0]]]
    @col="V"
    generarPiezaAzar()
    puts "Pieza Azar:"+@n.to_s
    #puts @z.length
    end
    
    def generarPiezaAzar()
    @n=rand(0..@z.length-1)
    end
    
    def getPieza()
    return @z[@n]
    end
    
    def validarMovimiento(t,f,c)
    valido=true
    for i in (0..2)
    for j in (0..2)
    if (@z[@n][i][j]==1 and t[f+i][c+j]==1)
    return false
    end
    end
    end
    return true
    end
    
    def pintarPieza
    for i in (0..2)
    print @z[@n][i]
    puts ""
    end
    end
    end
    
    t=Tablero.new(5,4)
    p=Piezas.new()
    f=0
    c=2
    fa=-1
    
    loop do
    if f==0
    p.pintarPieza()
    end
    if p.validarMovimiento(t.getData(),f,c)
    if fa!=-1
    t.pintarPieza(p.getPieza(),fa,c,0)
    end
    t.pintarPieza(p.getPieza(),f,c,2)
    t.imprimirTablero()
    puts ""
    sleep(2)
    fa=f
    f+=1
    else
    t.pintarPieza(p.getPieza(),fa,c,1)
    d=9
    if f==0
    break
    end
    f=0
    c=2
    fa=-1
    p.generarPiezaAzar()
    end
    end