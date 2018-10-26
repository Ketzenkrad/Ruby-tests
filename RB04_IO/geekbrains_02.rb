#Домашнее задание номер 2, урок 2.

# print "Введите номер цвета радуги, от 1 до 7: "
# colors = gets.to_i
# color = ''

# case colors
# when 1
#   color = 'красный'
# when 2 
#   color = 'оранжевый'
# when 3
#   color = 'желтый'
# when 4
#   color = 'зеленый'
# when 5
#   color = 'голубой'
# when 6
#   color = 'синий'
# when 7
#   color = 'фиолетовый'
# else
#   color = 'не существующий'
# end

# puts "Вы выбрали #{color} цвет."

# print "Введите номер цвета радуги: "
# input = gets.chop
# colors  = {
#   "1":"красный",
#   "2":"оранжевый",
#   "3":"желтый",
#   "4":"зеленый",
#   "5":"голубой",
#   "6":"синий",
#   "7":"фиолетовый",
#   "default":"нет такого"
# }
# puts "Вы выбрали #{colors[input.to_sym]||greet[:default]}"


class NewUser
  puts "Enter the username: "
  user_name = gets.chomp
  puts "Enter the score: "
  user_score = gets.chomp
  def user_hash(user_name, user_score)
    hash = @user_name, @user_hash = {user_name, user_score}
    puts hash
  end
end
