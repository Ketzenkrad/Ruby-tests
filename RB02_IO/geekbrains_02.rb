#Домашнее задание номер 2, урок 2.

print "Введите номер цвета радуги, от 1 до 7: "
colors = gets.to_i
color = ''

case colors
when 1
  color = 'красный'
when 2 
  color = 'оранжевый'
when 3
  color = 'желтый'
when 4
  color = 'зеленый'
when 5
  color = 'голубой'
when 6
  color = 'синий'
when 7
  color = 'фиолетовый'
else
  color = 'не существующий'
end

puts "Вы выбрали #{color} цвет."