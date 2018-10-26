#Duck-type

#Enumerable
#class
class Ticket
    attr_accessor :price, :date
    def initialize(price:, date:)
        @price = price
        @date = date
    end
    #Чтобы получать не дамп объекта,
    #а человеческий вид используем to_s
    #куда и передаем инстансы;
    def to_s
       "date is #{date}, price is #{price}$" 
    end
    #Alias to_str to_s нужен для того, 
    #чтобы можно было складывать со строкой;
    alias to_str to_s
end

ticket = Ticket.new(price: 1024, date: '10.20.2018')
puts "Ticket: #{ticket}"

#Научить класс вести себя как массив
class User
    attr_accessor :name, :family, :patronim
    def initialize(name:, family:, patronim:)
        @name= name
        @family = family
        @patronim = patronim
    end
    #к массиву
    def to_a
        [@family, @name, @patronim]
    end
    #Для объекта как массива
    alias to_ary to_a
end

user = User.new(family:'Ses', name:'Ese', patronim:'Esq')
p ['is', 'user'] + user

#Duck type на примерах
#Чтобы сократить код для уток, используем модуль;
module DuckModule
    def quack
        'Quack'
    end
    def swim
        'Duck swim'
    end
end

class Duck
    include DuckModule
    # def quack
    #     'Quack One'
    # end
    # def swim
    #     'Duck can swim'
    # end
end

class Pseudoduck
    include DuckModule
    # def quack
    #     'Quack One'
    # end
    # def swim
    #     'Duck can swim'
    # end
end

duck = Duck.new
object = Pseudoduck.new

puts duck
puts object

#и на примере билета;
def ticket.quack
    'Quack One'
end

def ticket.swim
    'Duck can swim'
end

#respond_to - отзывается ли объект на метод
if duck.respond_to?(:quack)&&duck.respond_to?(:swim)
    puts 'duck is duck'
end

if object.respond_to?(:quack)&&object.respond_to?(:swim)
    puts 'object is duck'
end

if ticket.respond_to?(:quack)&&ticket.respond_to?(:swim)
    puts 'ticket is duck'
end

#Встроенные модули
class Rainbow
    #класс как коллекция;
    include Enumerable
    def each
        #Здесь итератор;
        yield 'red'
        yield 'orange'
        yield 'yellow'
        yield 'blue'
        yield 'green'
        yield 'violet'
        yield 'indigo'
        yield 'grey'       
    end
end
r = Rainbow.new
#просто выводим цвета;
r.each{|i| puts i}
#Поиск цветов;
puts r.find{&:start_with? 'g'}
#Итератор map для получения нового массива
puts r.map{&:upcase}