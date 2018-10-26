#Специальные методы;
#Логические методы;
# class Ticket
#     def initialize(price:, status:)
#       @price = price
#       @status = status  
#     end
#     def price
#         @price
#     end
#     def status?
#         @status
#     end
# end

# ticket = Ticket.new(price: 1024, status: true)
# puts format('Цена на билет %.2f рублей', ticket.price)

# if ticket.status?
#     puts 'Билет продан'
# else
#     puts 'Билет доступен'
# end

#Другие способы информирования, bang-метод - изменяет исходный объект;
#Примеры;
# class Ticket
#     def initialize(date: , price: 1000)
#         @price = price
#         @date = date
#     end
    #Сеттер
    # def price=(price)
    #     @price = price
    # end
    #Геттер
#     def price
#         @price
#     end
#     def date=(date)
#         @date = date
#     end
#     def date
#         @date
#     end
# end
#Объекты
#ticket = Ticket.new(date: '18.10.2018', price: 1024)
#Сеттеры
#ticket.price = 2304
#ticket.date = '19.10.2018'
#Вывод
#puts "Цена билета в рублях: #{ticket.price}, билет на дату: #{ticket.date}"

#Рефактор через accessor;
# class Ticket
    # attr_reader :price, :date
    # attr_writer :price, :date
#     attr_accessor :price, :date
#     def initialize(date: , price: 1000)
#         @price = price
#         @date = date
#     end
# end

# ticket = Ticket.new(date: '18.10.2018', price: 1024)

# ticket.price = 2304
# ticket.date = '19.10.2018'

# puts "Цена билета в рублях: #{ticket.price}, билет на дату: #{ticket.date}"