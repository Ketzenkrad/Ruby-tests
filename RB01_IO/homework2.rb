# x = 1024
# y = 100
# puts 'Start'
#     if x >= y
#         puts "Work"
#     elsif
#         puts "Not found"
#     else 
#         puts "Not Work"
#     end
# puts 'End'

# print 'Число:  '
# n = gets.to_i

# if n > 0
#     puts "Положительное число."
# elsif n < 0
#     puts "Отрицательное число."
# else
#     puts "Вы ввели ноль."
# end


print "Введите номер дня недели: "
num = gets.to_i
day = ''
dayType = ''
case num
  when 1,2,3,4,5
    dayType = 'Рабочий день.'
  when 5, 6
    dayType = 'Выходной день'
  when 1
    day = 'Понедельник'
  when 2
    day = 'Вторник'
  when 3
    day = 'Среда'
  when 4
    day = 'Чевтерг'
  when 5
    day = 'Пятница'
  when 6
    day = 'Суббота'
  when 7
    day = 'Воскресенье'
  else
    day = "Дни недели с 1го до 7ми."
end
puts "Сегодня #{day}, #{dayType}"
