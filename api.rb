require 'rubygems'
require 'rest-client'
require 'json'
require 'pp'
require 'docx'

titulo1 = "Curso de Emprendimiento Digital"
titulo2 = "2021"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

url = 'https://mindicador.cl/api'

response = RestClient.get(url)

puts 'CONECTANDO A API '
puts '-----------------'


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

cuerpo.each do |key,valor|
    if key != "version" && key != "autor" && key != "fecha"
        puts cuerpo[key]["nombre"] + " : " + cuerpo[key]["valor"].to_s
    end
end

puts 'FIN Indicadores'


#doc.save('Nuevo.docx')