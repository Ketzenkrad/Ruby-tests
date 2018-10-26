#Синглтон методы;
# ticket = Object.new
# def ticket.price
#     1024
# end
# puts "Цена билета в рублях: #{ticket.price}"

#Собственные синглтоны для классов;
# class Alert
#     def self.say
#         'alert 010101'
#     end
#     def instance_say
#         'Instance' 
#     end
# end

# puts Alert.new
# alert = Alert.new
# puts alert.instance_say

#Специальная конструкция;
# class Alarm
    #
# end

# class << Alarm
#     def message
#         'test'
#     end
# end

# puts Alarm.message

#Тоже самое;
# class Alarm
#     class << self
#     def message
#         'test'
#     end
#     end
# end

# puts Alarm.message

#полный эквивалент двух классов
# class ClassName
#     def self.method
#         'test 1'
#     end
#     def self.void
#         'void'
#     end
# end

# class ClassName
#     class << self
#         def say
#             'test 2'
#         end
#         def void
#             'void'
#         end
#     end
# end

# puts ClassName.say