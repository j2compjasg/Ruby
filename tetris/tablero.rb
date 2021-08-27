class Tablero

    def crearTablero(f,c)
        z=Array.new(f,' ')
    
        for i in (0..f-1)
            z[i]=Array.new(c,' ')
        end
        return z
    end
    

end 

class Piezas

end