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

cuerpo = JSON.parse(response)

str = ""
#puts cuerpo.length

#pp cuerpo
#valor = cuerpo
#puts cuerpo
doc = Docx::Document.open('test.docx')

str += "\n"
str += "INDICADORES ECONOMICOS" + "\n"
str += "" + "\n"
str = ""
str = cuerpo["fecha"].slice(0..9).to_s
puts str
doc.bookmarks['fecha'].insert_after(str)

cuerpo.each do |key,valor|
    if key != "version" && key != "autor" && key != "fecha"
        str += cuerpo[key]["nombre"] + " : " + cuerpo[key]["valor"].to_s + "\n"
    end
end

puts str


#doc.save('Nuevo.docx')