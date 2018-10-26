#Сохранение состояния; инстанс; init
#Класс билета сохраняет цену;
class Ticket
    #initialize
    def initialize(date: , price: 1000)
        set_price(price)
        set_date(date)
        puts "Стартовое состояние: "
    end
    #Инстанс переменная хронит состояние;
    #Суть инстанса - уникальность для каждого объекта;
    def set_price(price)
        @price = price
    end
    #Метод который возвращает значение;
    def price
        @price
    end
    #Переменные датыl
    def set_date(date)
        @date = date
    end
    def date
        @date
    end
end
#Объекты
ticket01 = Ticket.new(date: '18.10.2018')
ticket02 = Ticket.new(date: '19.10.2018', price: 600)
#nill без initialize
# puts "Цена первого билета: #{ticket01.price}"
#Цены с присвоением
# ticket01.set_price(1024)
# ticket02.set_price(3500)
#Puts
# puts "Цена первого билета: #{ticket01.price}"
# puts "Цена второго билета: #{ticket02.price}"

puts "Цена первого билета: #{ticket01.price}. Дата: #{ticket01.date}"
puts "Цена второго билета: #{ticket02.price}. Дата: #{ticket02.date}"