titulo1 = "Curso de Emprendimiento Digital"
titulo2 = "2021"
titulo3 = "CHILE"

puts titulo1
puts titulo2
puts titulo3

require 'docx'

doc = docx::document.open('prueba.docx')
doc.paragraphs.each.do
    puts lectura
end
