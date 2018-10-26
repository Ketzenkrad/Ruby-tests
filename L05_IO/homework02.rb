# 2. Создайте класс пользователя User, который бы при 
# создании 
# объекта позволял задавать фамилию, имя и отчество. 
# Метод должен реализовывать методы чтения и установки 
# фамилии, имени и отчества. 
# Кроме того, объект класса пользователя должен:
# * позволять сложение со строкой;
# * вызывать метод full_name, который возвращает строку 
# с именем пользователя;
# * поддерживать метод, который возвращает имя, фамилию 
# и отчество в виде массива.

class User
  attr_accessor :name, :patronim, :lastname

  def initialize(name, patronim, lastname)
    @name = name
    @patronim = patronim
    @lastname = lastname
  end

  def full
    puts name + ' ' + patronim + ' ' + lastname
  end

  def array_write
    array = []
    array.push(name)
    array.push(patronim)
    array.push(lastname)
    return array
  end

end

us = User.new('UserName', 'Patronim', 'LastName')
us.full
p us.array_write