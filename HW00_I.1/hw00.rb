# 1. Пусть имеется хэш { 
#     red: 'красный', 
#     orange: 'оранжевый', 
#     yellow: 'желтый', 
#     green: 'зеленый', 
#     blue: 'голубой', 
#     indigo: 'синий', 
#     violet: 'фиолетовый' }. 
#     Првератите его в хэш { 
#     'красный' => 'red', 
#     'оранжевый' => 'orange', 
#     'желтый' => 'yellow', 
#     'зеленый' => 'green', 
#     'голубой' => 'blue', 
#     'синий' => 'indigo', 
#     'фиолетовый' => 'violet' }.

puts "###Задание №1###"
hashed = {
    red: 'красный', 
    orange: 'оранжевый', 
    yellow: 'желтый', 
    green: 'зеленый', 
    blue: 'голубой', 
    indigo: 'синий', 
    violet: 'фиолетовый' 
}
puts "Hashwork (not utf-8 encode): #{hashed}"
puts "######"
hashMapped = hashed.map{|x, y| [y.to_s, x.to_s]}.to_h
puts "Hash.map (not utf-8 encode): #{hashMapped}"

# 2. Преобразуйте массив вида %w[first second third] 
# в хэш вида {
#     first: 'Fst (1)', 
#     second: 'Snd (2)', 
#     third: 'Trd (3)'}. 
# Выражение преобразования должно быть однострочным.

puts "###Задание №2###"
puts "Array is: #{array = %w[first second third]}"
puts "Hashed array is: #{array = array.map.with_index { |i, e| [i.to_sym, "#{i[0].capitalize + i[i.size - 2] + i[i.size - 1]} (#{e + 1})"] }.to_h}"
