#Как работает перегрузка методов;
# class Base
#     def testing
#         'test'
#     end
# end
#Перезапись;
# class BaseTwo < Base
#     def testing
#         'test re-write'
#     end
# end
#Объект/вывод;
# object = BaseTwo.new
# puts object.testing

#Перезагрузка методов [метод = оператор]
class Ticket
    #подключаем модуль для работы UFO-оператора
    #и автоматической работы операторов сравнения;
    #Сравнивает объекты по прописанным правилам;
    include Comparable
    attr_accessor :price, :date

    def initialize(price:, date:)
        @price = price
        @date = date
    end
    #Создаем метод + 'плюс'
    def +(number)
        #Реализация метода +
        @price += number
        self
    end
    #Создаем метод для сравнения билетов;
    #Чтобы сократить код, искользуем оператор UFO
    def <=>(ticket)
        @price <=> ticket.price
    end
end
#Объекты
ticket0 = Ticket.new(price: 5.5, date: '20.10.2018')
ticket1 = Ticket.new(price: 5.5, date: '20.10.2018')
#Прибавление стоимости
ticket0 += 10
ticket1 += 1
#Сравнение
if ticket0 > ticket1
    puts "Ticket 1 price > ticket 2 price"
elsif ticket0 < ticket1
    puts "Ticket 1 price < ticket 2 price"
elsif ticket0 == ticket1
    puts "Ticket summ is equal"
else 
    puts "Incorrect"
end

puts ticket0.price, ticket1.price

# puts format('Ticket price is %.2f', ticket.price)
# puts "Ticket date: #{ticket.date}"