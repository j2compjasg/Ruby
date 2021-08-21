def creardoc(ndoc,fecha,rut,razsoc,dir,comuna)
    return {
        "NFact" => ndoc,
        "Fecha" => fecha,
        "RUT" => rut,
        "Cliente" => razsoc,
        "Direccion" => dir,
        "Comuna" => comuna, 
        "Neto" => 0,
        "IVA" => 0,
        "Total" => 0,  
        "Detalle" => []  } 
end

def agregardetalle(cant,detalle,vunit)
    tmpdet = {
        "Cant" => cant,
        "Detalle" => detalle,
        "VUnit" => vunit
    }
    $doc ["Detalle"].push (tmpdet)
    neto = 0
    for i in $doc ["Detalle"]
        neto =+ i["Cant"] * i["VUnit"]
    end 
    $doc["Neto"] = neto
    $doc ["IVA"] = neto * 0.19
    $doc ["Total"] = neto + $doc["IVA"]
end

$doc =creardoc(1,"20-08-2021","12884231-4", "Javier Salgado", "Mi Casa 666","Machalí")
agregardetalle(22,"Chokitas",100)
agregardetalle(5,"Coca Cola 600cc",750)
puts $doc["Detalle"]
puts "Total Neto = #{$doc["Total"]}"
puts "IVA = #{$doc["IVA"] }"
puts "TOTAL = #{$doc["Total"]}"
