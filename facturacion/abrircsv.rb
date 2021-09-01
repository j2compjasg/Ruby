require 'csv'
#arch = File.expand_path('productos.csv')
#comas = CSV.new(open(arch))
arch = 'D:\PFILES\productos.csv'
CSV.foreach(arch) do |row|
    puts "#{row[0]} #{row[1]} #{row[2]} #{row[3]} #{row[4]} #{row[5]} #{row[6]} #{row[7]} " 
end

