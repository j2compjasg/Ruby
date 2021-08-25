require 'rubygems'
require 'rest-client'
require 'json'
require 'pp'
require 'docx'


def format_number(number,dec)
    precision = 0
    if dec > 0 
        precision = dec
    end

    if dec > 0 then 
        number = number.round(precision)
    end
    todo, decimal = number.to_s.split(".")
    strdec = decimal.to_s

    for i in(strdec.length..dec-1) 
        strdec += "0"
    end

    num_groups = todo.chars.to_a.reverse.each_slice(3)
    todo_y_coma = num_groups.map(&:join).join(',').reverse

    if precision > 0 then 
        return [todo_y_coma, strdec].compact.join(".")
    else
        return todo_y_coma
    end
end

titulo1 = "Curso de Emprendimiento Digital"
titulo2 = "2021"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

url = 'https://mindicador.cl/api'



puts 'Presione ENTER para conectar A API '
puts '-----------------------------------'
a = gets.chomp

response = RestClient.get(url)
cuerpo = JSON.parse(response)

puts 'API descargada completamente'
puts '-----------------------------'
str = ""
#puts cuerpo.length

#pp cuerpo
#valor = cuerpo
#puts cuerpo
#doc = Docx::Document.open('test.docx')

puts 
puts "INDICADORES ECONOMICOS" 
puts 
str = ""
puts cuerpo["fecha"].slice(0..9).to_s
puts

#doc.bookmarks['fecha'].insert_after(str)


puts '-----------------------------------------------------'
cuerpo.each do |key,valor|
    if key != "version" && key != "autor" && key != "fecha"
        puts cuerpo[key]["nombre"].ljust(40) + " : " + format_number(cuerpo[key]["valor"],2).to_s.rjust(10)
    end
end
puts '-----------------------------------------------------'
puts 'FIN Indicadores'


#doc.save('Nuevo.docx')