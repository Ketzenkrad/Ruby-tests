# 3. Создайте класс Group, конструктор которого 
# может принимать произвольное количество объектов 
# класса User (из предыдущего задания). 
# Реализуйте вывод списка пользователей 
# с использованием класса Group.

class Group
  attr_accessor :user

  def initialize(User)
    array = []
    @user = User
    array.push(@user)
  end

  def get_array
    puts array
  end
end
