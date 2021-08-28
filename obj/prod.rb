class Producto

    def initialize (cod,nom,col,prec)
        @codigo = cod
        @nombre = nom
        @color = col
        @precio = prec
    end

    def gcodigo
        @codigo
    end

    def gnombre
        @codigo
    end

    def gcolor
        @color
    end

    def gprecio
        @precio
    end

    def descr
        return "#{@codigo.to_s.rjust(4)} #{@nombre.ljust(20)} #{@color.ljust(15)} #{@precio.to_s}"
    end

end

class Listaprod
    def initialize
        @lista = []
    end

    def agregarProducto(cod,nom,col,pre)
        @lista.push(Producto.new(cod,nom,col,pre))
    end

    def listado
        @lista.each {|prod| puts prod.descr()}
        puts "Total de #{@totalProds.to_s} Productos"
    end

    def totalProds
        return @lista.length - 1
    end

end

prods = Listaprod.new

prods.agregarProducto(1,"Polera","Blanca",4990)
prods.agregarProducto(2,"Polera","Azul",4990)
prods.agregarProducto(3,"Chaleco","Blanca",12490)
prods.agregarProducto(4,"Pantalon","Negro",12990)
prods.agregarProducto(5,"Camisa","Verde",6990)
prods.agregarProducto(6,"Blusa","Beige",3990)
prods.agregarProducto(7,"Falda","Roja",9990)

prods.listado

opcion = ""

while opcion != "S" || opcion != "0" || opcion != "s"
    puts "--------------"
    puts "MENU PRINCIPAL"
    puts "--------------"
    puts
    puts "Elija una de las siguientes opciones:"
    puts "-------------------------------------"
    puts
    puts "1 / A - Agregar Producto"
    puts "2 / L - Listado de Productos"
    puts "0 / S - Salir"
    puts "----------------------------"
    puts
    opcion = gets.chomp

    case opcion

    when "1" || "a" || "A"
        puts "aquí se solicitará ingresar un producto"
    when "2" || "l" || "L"
        prods.listado
    when "0" || "s" || "S"
    
    else
        puts "ingrese una opción correcta"
    end

end