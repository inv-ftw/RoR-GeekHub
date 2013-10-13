array = [621, 448, 147, 159, 430, 222, 482, 44, 194, 522,
			652, 494, 12, 126, 532, 387, 441, 471, 337, 
			446, 18, 36, 202, 572, 556, 458, 16, 139, 222,
			220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 300] 

#узнать количество элементов в массиве
puts array.length
puts "-----------------"

#перевернуть массив
puts array.reverse
puts "-----------------"

#найти наибольшее число
puts array.max
puts "-----------------"

#найти наименьшее число
puts array.min
puts "-----------------"

#найти среднее арифметическое
summ = 0
array.each do |el|
	summ += el
end
puts summ/array.length
puts "-----------------"

#отсортировать от меньшего к большему
puts array.sort
puts "-----------------"

#отсортировать от большего к меньшему
puts array.sort { |a, b| b <=> a } #  или так: array.sort.reverse
puts "-----------------"

#удалить все нечетные числа
puts array.reject {|i| i%2 > 0}
puts "-----------------"

#оставить только те числа, которые без остатка делятся на 3
puts array.select {|i| i%3 == 0}
puts "-----------------"

#удалить из массива числа, которые повторяются
puts array.uniq
puts "-----------------"

#разделить каждый элемент массива на 10, в результате элементы не должны быть округлены до целого
array2 = []
array.each do |el|
	array2 << el.to_f / 10
end
puts array2
puts "-----------------"

#получить те буквы алфавита, порядковый номер которых есть в нашем массиве
letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
res = []
letters.each do |el|
	if array.include?(letters.index(el)+1)
		res << el
	end
end
puts res
puts "-----------------"

#поменять местами минимальный и максимальный элементы
min_el = array.min
max_el = array.max
max_el_index = array.index(max_el)
min_el_index = array.index(min_el)
array.insert(min_el_index, max_el)
array.delete_at(min_el_index + 1)
array.insert(max_el_index, min_el)
array.delete_at(max_el_index + 1)
puts array

#найти три наименьших элемента
min_el = array.min
min_el2 = array.first
min_el3 = array.first

array.each do |el|
	if el > min_el and el < min_el2
		min_el2 = el
	end
end 
array.each do |el|
	if el > min_el2 and el < min_el3
		min_el3 = el
	end
end

puts min_el.to_s + ", " + min_el2.to_s + ", " + min_el3.to_s
puts "-----------------"










