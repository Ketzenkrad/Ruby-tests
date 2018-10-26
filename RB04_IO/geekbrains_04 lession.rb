# Циклы;
while true
    puts '0101010111010'
end

n = 1
while n<21
    puts n
    n+=1
    break if n > 15
end

x = 1
while x<10
    puts x
    x+=1
    next if x > 5
    puts x
end

a = 1
begin
    puts a
    a+=1
    next if a > 5
    puts a
end while a<10

@n = 0
while @n<10
    @n += 1
    puts @n
end

def calculate
    @x ||= 0
    @x += 1
    @x < 11
end

while calculate
    puts @x
end

puts @x while calculate

x = 1
until x > 10
    puts x
    x += 1
end

for elements in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    puts elements
end

for sector in 1..20
    puts sector
end

# Итераторы;
# Через цикл
array = %w(red orange yellow green gray indigo violet)
for colors in array 
    puts colors
end

# Итератор;
array = %w(red orange yellow green gray indigo violet)
array.each do |colors| 
    puts colors
end

colorsHash = {
    red: 'красный',
    orange: 'оранжевый',
    yellow: 'желтый',
    green: 'зеленый',
    blue: 'голубой',
    indigo: 'синий',
    violet: 'фиолетовый'
}
colorsHash.each do |key, value|
    puts "Ключ: #{key} => значение: #{value}"
end

colorsHash = {
    red: 'красный',
    orange: 'оранжевый',
    yellow: 'желтый',
    green: 'зеленый',
    blue: 'голубой',
    indigo: 'синий',
    violet: 'фиолетовый'
}
colorsHash.each { |key, value| puts "Ключ: #{key} => значение: #{value}" }

10.times {|x| puts x}

10.upto(20) {|z| puts z}

20.downto(10) {|a| puts a}

hash = [1, 2, 3, 4, 5, 6, 7, 8, 9].each {|c| puts c + 1}
p hash

# map/collect
array = [1, 2, 3, 4, 5, 6, 7, 8, 9].map {|z|  z + 1}
p array

# select/find_all
array = [1, 2, 3, 4, 5, 6, 7, 8, 9].select {|z|  z.even?}
p array

# вывод исходного массива;
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p array

arr = array.map {|x| x.even?}
p arr

# Reject delete_if
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p array
p array.map{|x| x.even?}
p array.reject{|x| x.even?}
p array.reject{|x| x.even?}.map{|x| x*x}

# reduce
puts [1, 2, 3, 4, 5].reduce{|fact, x| fact*x}
puts [1, 2, 3, 4, 5].reduce(10){|fact, x| fact*x}

# Массив квадратов чисел;
array = []
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |a|
    array << a*a
end
p array
# Он же
p arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map{|a| a*a}

# Tap
array = [1, 2, 3, 4, 5].map do |z|
    p z
    z*z
end
p array

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].tap{|z| puts z}.map{|z| z*z}
p array

def hash_name(params)
    params[:pages] = 1
    p params
end

def hash(params)
    params.tap{|p| p[:pages] = 1}
end

[*1..100].each do |num|
    puts num
    break if num > 12
    puts num
end

[*1..100].each do |num|
    puts num
    next if num > 12
    puts num
end

# Создание собственных итераторов
# Loop
loop do
    puts '10010101'
end

def my_loop
    puts 'Def start'
    yield
    puts 'Def end'
end
my_loop{puts 'Call into the def'}

# Многократное вычесление;
def my_loop
    x = 0
    puts 'Старт:'
    yield x +=2
    yield x +=4
    yield x +=6
    yield x +=8
    yield x +=10
    yield x +=12
    puts 'Завершение;'
end
my_loop{|x| puts "Итерация, результат: #{x}"}

# Бесконечное вычисление;
def my_loop
    while true
        yield
    end
end
my_loop{|x| puts "Итерация, результат: #{x}"}

# Оно же;
def my_loop
   yield while true
end
my_loop{|x| puts "Итерация, результат: #{x}"}

block_given?
def new_loop
    if block_given?
        yield while true
    end
end
new_loop

# оно же;
def new_loop
    return unless block_given?
        yield while true
    end
new_loop{puts 010101100}

def new_loop(&block)
    return unless block_given?
        block.call while true
    end
new_loop{puts "В десятичной: #{00}"}

# Proc объекты;
puts [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select{|x| x.even?}
# Через символ;
puts [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select(&:even?)

puts [1, 2, 3, 4, 5, 6, 7, 8].reduce{|factorial, a| factorial *a}
array = [1, 2, 3, 4, 5, 6, 7, 8].reduce(&:*)
puts "Факториал чисел от 1 до 8 равен: #{array}"

# Дерево. Proc-объекты;
# Рекурсивно обойти дерево;
require_relative 'tree'
TREE.each do |f|
    puts 'Directory' if Hash === f
    puts 'File' if String === f    
end

# На case
require_relative 'tree'
TREE.each do |f|
    case f 
    when Hash 
        puts 'Directory'
    when String 
        puts 'File'
    end
end

# case и then
require_relative 'tree'
def walk_tree(array = [])
    array.each do |f|
    case f 
    when Hash then puts 'Directory'
    when String then puts 'File'
    end
end
end
walk_tree(TREE)

# Proc
require_relative 'tree'
def walk_tree(array = [], &block)
    array.each do |f|
    case f 
    when Hash 
        f.each{|_dir, files|walk_tree(files, &block)}
    when String then 
        block.call f
    end
end
end
walk_tree(TREE){|file| puts file}