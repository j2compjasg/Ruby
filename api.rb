require 'rubygems'
require 'rest-client'
require 'json'
require 'pp'

titulo1 = "Curso de Emprendimiento Digital"
titulo2 = "2021"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

url = 'https://mindicador.cl/api'

response = RestClient.get(url)

cuerpo = JSON.parse(response)

#puts cuerpo.length

pp cuerpo
#valor = cuerpo
#puts cuerpo

puts ""
puts "VAMOS A RECORRER EL HASH"
puts ""
cuerpo.each {|key,valor| puts "Clave :#{key} , Valor: #{valor}" }




