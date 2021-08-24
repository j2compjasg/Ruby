cliente = [ {"Nombre" => "Juan", "ApePat" => "Perez", "Estatura" => 1.92},
    {"Nombre" => "Pedro", "ApePat" => "Rubilar", "Estatura" => 1.68},
    {"Nombre" => "Mariana", "ApePat" => "Cancino", "Estatura" => 1.70},
    {"Nombre" => "Antonia", "ApePat" => "Bermudez", "Estatura" => 1.62} ]

    puts cliente.length
puts cliente[1].keys


puts cliente[2].values

puts cliente[1].has_key? "Nombre"

puts cliente[2].has_key? "RUT"

puts cliente[3].has_value? "Juan"

puts cliente[0].has_value? "pepito"

puts cliente[3]{"ApePat"}.values
