# 1. Создайте класс человека Person, 
# унаследуйте от него классы посетителей User, 
# администраторов Admin и модераторов Moderator. 
# Запретите возможность создания объектов класса Person. 
# Всем объектам классов добавьте возможность задавать фамилию, 
# имя и отчество пользователя, 
# а также получать эти сведения.

class Person
    attr_accessor :name, :family, :patronim
    def initialize(name, family, patronim)
        @name = name
        @family = family
        @patronim = patronim
    end
    def userInfo
       'UserInfo: ' + @family + ' ' + @name + ' ' + @patronim
    end
    private_class_method :new
end

class User < Person
    public_class_method :new
end

class Moderator < Person
    public_class_method :new
end

class Admin < Person
    public_class_method :new
end

user = User.new('User_Family', 'User_Name', 'User_Patronim')
mod = Moderator.new('Moderator_Family', 'Moderator_Name', 'Moderator_Patronim')
admin = Admin.new('Admin_Family', 'Admin_Name', 'Admin_Patronim')

puts user.userInfo
puts mod.userInfo
puts admin.userInfo
