
arr = ["Uva", "Manzana", "Pera", "Kiwi"]

#puts arr.length

#arr2 = Array.new
arr2 = []

arr.reverse_each do |el|
    arr2.push el
end

puts arr
puts
puts arr2
