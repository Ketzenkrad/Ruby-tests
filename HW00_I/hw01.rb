# 3. Пусть есть диапазон от 1 до 9 — (1...10). 
# Преобразуйте его в массив из 
# трех подмассивов [[1, 2, 3], [4, 5, 6], [7, 8, 9]].

puts "###Задание №3###"
range = (1..9)
puts "Range is #{range}"
range = range.to_a.each_slice(3).to_a
p "Arrays result is: #{range}"

# 4. Возьмите текст этого задания и извлеките из него 
# все слова, количество символов в которых больше 5. 
# Подсчитайте количество слов и выведите их алфавитном 
# порядке.

puts "###Задание №4###"
puts string = "Возьмите текст этого задания и извлеките из него  все слова, количество символов в которых больше 5. Подсчитайте количество слов и выведите их алфавитном порядке."
string = string.split.map{|x| x.match /[А-Яа-я]{6,}/}
string = string.reject(&:nil?)
string = string.map{|x| x.to_s.downcase}
puts "Words with symbols <5 is (not UTF-8 encode): #{string.sort}"
puts "They quantity is: #{string.size}"