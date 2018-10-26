# Область видимости: public, private, protected
# class Ticket
#     def price
#         price_format(1024)
#     end

#     private

#     def date
#         '10.10.2018'
#     end
#     def price_format(price)
#         format('Price: %.2f', price)
#     end
# end
# ticket = Ticket.new
# p ticket.price

#private
# class Person
#     attr_accessor :name, :score
#     def initialize(name:, score:)
#         @name = name
#         @score = score
#     end
#     def compare(user)
#         if @score > user.score
#             puts 'User one win'
#         elsif @score < user.score
#             puts 'User two win'
#         else
#             puts 'standoff'
#         end
#     end
#     protected
#     def score
#         @score
#     end
# end

# user0 = Person.new(name: 'User One', score: 100)
# user1 = Person.new(name: 'User Two', score: 102)

# puts user0.compare(user1)

# class CM
#     private_class_method :new
# end
# users = CM.new

require 'singleton'

class Factory
    include Singleton
end

factory0 = Factory.instance
p factory0
factory1 = Factory.instance
p factory1
