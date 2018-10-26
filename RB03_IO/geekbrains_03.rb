
#coding: utf8
# Задание первое;
print "Фамилии пользователей: \n"
puts user_hash = users = [
    'Иванов',
    'Петров',
    'Сидоров',
    'Алексеева',
    'Казанцев',
    'Антропов',
    'Анисимова',
    'Кузнецов',
    'Соловьев',
    'Кошкина'
].flatten.sort

# # Задание второе;
print "Массив чисел: \n"
puts numbers_array = [0, 2, 4, 56, 81, 11, 31, 99, 20, 48].sort_by{|elem| elem.size}
    print "Минимальное значение: "
    puts numbers_array.min
        print "Максимальное значение: "
        puts numbers_array.max

# # # Задание третье;
class Users
  def initialize(user, score)
    @user, @score = user, score
  end
  def display
    puts "User #{@user} has score = #{@score}"
  end
end
user_data = Users.new('User Alex', '4')
puts user_data.display
user_data = Users.new('User Tanya', '4')
puts user_data.display
user_data = Users.new('User Sasha', '5')
puts user_data.display

# Задание четвертое;
# users_and_scores = [1=>'Иванов', 2=>'Петров', 3=>'Сидоров', 4=>'Кошкина', 5=>'Миронов']
class NewUser
  def users_objects
    puts names_n_scores = Hash[
    3 => 'Иванов', 
    4 =>'Петров',  
    2 => 'Кошкина', 
    5 => 'Миронов',
    1 => 'Светлов'  
    ].max
  end
end
maxscore = NewUser.new
print maxscore.users_objects

# Задание четвертое*;

