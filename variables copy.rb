titulo1 = "Curso de Emprendimiento Digital"
titulo2 = "2021"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

$global_variable = 10

class Global 
    def print_global
        puts "Variable Global es #{$global_variable} "
    end 
end 

class Local 
    def print_global 
        variable_local = 5
        puts "Variable Local es #{variable_local}"
    end
end

class1obj = Global.new 
class1obj.print_global
class2obj = Local.new
class2obj.print_global 