#self
class Ticket
    attr_accessor :price, :date
    def initialize(price:, date:)
        @price = price
        @date = date
    end
end
#object
ticket = Ticket.new(price: 1024, date:'10.10.2018')
#puts
p ticket
#Узнать инстансы;
p Ticket.instance_methods(false)

#main
puts self.class

###1
class ClassName
    puts 'ClassName'
    puts self   #Class
    module ModuleName
        puts 'ModuleName'
        puts self   #Class::Module
    end
    puts 'Bact to class'
    puts self   #Class
end

###2
class News
    def method_name
        puts self
    end
end
news = News.new
news.method_name    #<News:0x5

### 3singleton
object = Object.new
def object.price
    self
end
puts object.price    #<Object:0x4f4d090>
p object    #<Object:0x4f4d090>

###4 метод класса;
class C
    def self.price
        puts 'C-class singlton method'
    end  
    def self.date
        puts 'C-class date'
    end
end

C.price
###5
class Tested
  class << self
    def count
        puts 'Class def Tested, (single)'
    end
    def date
        puts 'Class def date, (single)'
    end
end  
end

Tested.count

###Reverse
class Map
    #атрибуты
    attr_accessor :point, :desc
    #метод с инициализацией
    def initialize(point:)
        @point = point
        @desc = false
    end
    #в этом методе меняем значение @desc на false
    def mark
        @desc = true
        #вызывая @desc self, то есть сам себя;
        self
    end
end

result = Map.new(point: 2046)
puts result.mark.point

###Ссылка на текущий объект
class Atribute
    attr_accessor :date, :price
    def initialize
        yield self
    end
end

price = Atribute.new do |x|
                x.date = '10.10.2018'
                x.price = 1024
                end
                p price