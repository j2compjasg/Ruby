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

str += "\n"
str += "INDICADORES ECONOMICOS" + "\n"
str += "" + "\n"
str += "DIA " + cuerpo["fecha"].slice(0..9) + "\n"
str += "--------------------------------" + "\n"

cuerpo.each do |key,valor|
    if key != "version" && key != "autor" && key != "fecha"
        str += cuerpo[key]["nombre"] + " : " + cuerpo[key]["valor"].to_s + "\n"
    end
end

puts str

doc = Docx::Document.new('text.docx')

doc.insert_text (str)

doc.save('Nuevo.docx')