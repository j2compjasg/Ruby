titulo1 = "Curso de Emprendimiento Digital"
titulo2 = "2021"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

require 'docx'

doc = Docx::Document.open('prueba.docx')
#doc.paragraphs.each do |lectura| 
#    puts lectura
#end

doc.bookmarks.each_pair do |bookmark_name, bookmark_object|
    puts bookmark_name
  end