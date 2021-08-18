i=1
10.times do |i|
    puts i
end


arr = ["Mane", "Carolina", "Claudia", "Marco", "Sebastián", "Eduardo", "Freddy"]

arr.each do |i|
    puts i
end

nums = %w[uno dos tres cuatro cinco seis siete ocho]

str = " " 

nums.reverse_each {|nums| str += "#{nums}"}
puts str

str = ""

nums.each {|nums| str += "#{nums}"}
puts str

5.times { puts "We *love* Ruby -- it's outrageous!" }

tiempo = Time.new

hora = tiempo.hour
minuto = tiempo.min 
segundo = tiempo.sec 

hora_completa = "#{hora}:#{minuto}:#{segundo}"

#puts hora_completa

año = tiempo.year
mes = tiempo.month 
dia = tiempo.day

fecha_completa = "#{dia}/#{mes}/#{año}"

puts "Hoy es #{fecha_completa} y la hora es #{hora_completa}"
