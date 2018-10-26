#Пример перезаписи;
# class Message
#     def alert
#         puts "Alert"
#     end
# end
#Переписываем метод;
# class Message
#     def alert
#         puts "Alert re-off"
#     end
# end
#Объект -- вызов
# testing = Message.new
# testing.alert

#Изменяем поведение метода;
# puts 'abcdferg'.reverse

# class String
#     def reverse
#         'Изменяем поведение метода;'
#     end
    #Собственный метод;
#     def say
#         "Test, #{self};"
#     end
# end

# puts 'abcdferg'.say

#Изменение поведения;
# puts "Цена билета #{1024} рублей"
# class Integer
#     def to_s
#         "Класс сломан"
#     end
# end
# puts "Цена билета #{1024} рублей"

#Пространство имен;
# module ModuleName
#     class User
#         def data
#             puts "User_info_data01"
#         end
#     end
#     class User
#         def data
#             puts "User_info_data02"
#         end
#     end
# end

# user_data = ModuleName::User.new
# puts user_data.data

#Константы;
# X = 1024
# module M
#     class C
#         X = 2048
#         class D
#             module M
#                 X = 4096
#                 puts X #4096
#                 puts ::X #1024
#             end
#         end
#     end
# end
# puts X
# puts M::C::X
# puts M::C::D::M::X

#Константы + модули + пространство имен
# class User
#     module Error
#         SALARY = "З/п должна быть больше нуля"
#         NAME = "Введите корректное имя: "
#     end
#     def output
#         puts Error::SALARY
#     end
# end
# puts User::Error::SALARY

# class User
#     def output
#         puts Error::SALARY
#     end
# end

# class User::Error
#     SALARY = "З/п должна быть больше нуля"
#     NAME = "Введите корректное имя: "
# end

# puts User::Error::SALARY

#Namespace
# module NameSpace
#     class Array
#         def to_s
#             'Модуль сломан;'
#         end
#     end
# end

# p Array.new #[]
# p NameSpace::Array.new #<NameSpace::Array:0x510a200>

#Kernel
# Kernel.puts 'Hallo'
# module Kernel
#     def say
#         'hello'
#     end
# end
# puts say