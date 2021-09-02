def format_number(number,dec)
    precision = 0
    if dec > 0 
        precision = dec
    end
  #  puts "NUMERO INICIAL #{number}"
    if dec > 0 then 
        number = number.round(precision)
 #       puts "truncado de numero en #{number}"
    end
    todo, decimal = number.to_s.split(".")
    strdec = decimal.to_s
#    puts "ENTERO = #{todo} DECIMAL = #{strdec} PRECISION = #{dec}"
    for i in(strdec.length..dec-1) 
        strdec += "0"
    end
    num_groups = todo.chars.to_a.reverse.each_slice(3)
    todo_y_coma = num_groups.map(&:join).join(',').reverse
    if precision > 0 then 
        return [todo_y_coma, strdec].compact.join(".")
    else
        return todo_y_coma
    end
end
