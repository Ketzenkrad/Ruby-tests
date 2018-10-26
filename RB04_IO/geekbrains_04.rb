
# 1. Дан массив ['cat', 'dog', 'tiger']. Нужно вернуть массив, состоящий только из элементов, 
# где встречается символ t.
# 2. Дан массив ['cat', 'dog', 'tiger']. Изменить его так, чтобы все элементы были написаны 
# заглавными буквами, а потом – в оригинальном виде. Записать все в одну строчку.
# 3. Создайте класс пользователя User, объекты которого сохраняют имя пользователя и его оценку. 
# Запросите в консоли при помощи метода gets имя и оценку пользователя. 
# Реализуйте опрос до тех пор, пока не будет введена корректная оценка в интервале от 1 до 5.
# 4. *Дан массив %i(first second third). Превратите его в хэш {first: 1, second: 2, third: 3}.
# 5. *Реализуйте полный аналог метода map. Назовите его my_map.

a = ['cat', 'dog', 'tiger']
def select_elements_starting_with_a(a)
a.select { |str| str.include?('t') }
end
p select_elements_starting_with_a(a)

array = ['cat', 'dog', 'tiger']
puts array.map(&:upcase).join(', ')
puts array.join(', ')

# class User
#     #Имя
#   def user_name(name)
#     @name = name
#   end
#   #Оценка
#   def user_score(score)
#     @score = 0
#     while @score<5
#     puts "NaN"
# end
#   end
#   #Строка с полученными данными
#   def to_s
#     "Name: #{@name}, score: #{@score}"
#   end
#   #К строке
#   def to_str
#     to_s
#   end
# end

# array = %i(first second third
# hash = a.to_h






