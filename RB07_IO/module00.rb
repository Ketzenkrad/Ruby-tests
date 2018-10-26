#Методы модуля Enumerable
# array = [1, 2, 3, 4, 5, 6, 7, 8] & [1, 2, 3, 4, 9, 5, 10, 1, 2, 10]
# puts array

#Set, Struct, OpenStruct
# class Point
#     attr_accessor :x, :y
#     def inititalize(x=nil, y=nil)
#         @x = x
#         @y = y
#     end
# end

# point = Point.new(10, 15)
# p point
# point = Point.new
# p point

#Более короткий путь
# Point = Struct.new(:x, :y)

# point = Point.new(10, 15)
# p point
# point = Point.new
# p point

#
# require 'ostruct'
# hashed = {
#     key: 'test',
#     value: 'work'
# }

# tested = OpenStruct.new(hashed)
# puts tested

#Proc и лямбда функции;
#Метод;
# def iter
#     yield
# end
#Блоки;
# iter {puts 1024+2048}
# iter do puts 1024+3072 end

# def work(&block)
#     block.call
# end
# work {puts %w[Test, message, call].to_s}

# def tested(&block)
#     block.call
# end
# test_proc = Proc.new{puts "Work in proc ++"}
# tested(&test_proc)

# class User
#     attr_accessor :name
#     def initialize
        # puts 'Def'
#     end
#     def self.to_proc
#         Proc.new{|user| user.name}
#     end
# end

# a = User.new
# a.name = 'Sqt'
# b = User.new
# b.name = 'Swt'
# c = User.new
# c.name = 'Set'
# d = User.new
# d.name = 'Srt'
# f = User.new
# f.name = 'Stt'
# g = User.new
# g.name = 'Syt'

# puts [a, b, c, d, f, g].map(&User).to_s

#Замыкания;
# def closer(x)
#     Proc.new{|y| puts "Result is: #{x*y}"}
# end

# catched = closer(1024)
# catched.call(2048)
# catched.call(248)
# catched.call(48)
# catched.call(4)

# def procCall(proced)
#     var = 'var in method'
#     puts var
#     proced.call
# end

# var = 'var in block'

# proced = Proc.new{puts var}
# proced.call

# procCall(proced)

#Лямбда
def lamb
    lamp = lambda{return}
    lamp.call
    puts "Lamp is work"

    point = Proc.new{return}
    point.call
    puts "That point is #{x}"
end
#call
lamb