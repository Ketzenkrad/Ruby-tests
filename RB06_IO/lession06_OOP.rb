# #module
# module ModuleName
#     #class
#     class Array
#         def to_s
#             'test++'
#         end
#     end
# end

# p Array.new
# p ModuleName::Array.new

# puts '#' * 10

# puts Array.new
# puts ModuleName::Array.new

# module ModuleTwo
#     #
# end
# puts ModuleTwo.class 

#Класс страницы
#SEO
module SEO
    attr_accessor :keywords, :seo_title, :description
end

class Page
    attr_accessor :title, :body, :headers
end

#Класс для блока новостей
class News < Page
    attr_accessor :date
    include SEO
end

#Класс для блока контактов
class About < Page
    attr_accessor :phones, :address
    include SEO
end
#Объект
about = About.new
#Вызов
about.title = 'About Us'
about.body = 'Our contacts'
about.phones = ['8 888 888 88 88']
about.keywords = 'Mixins'
about.seo_title = 'Seo mixin'
p about

#Класс для блока галереи
class PhotoCatalog < Page
    attr_accessor :photos
end

#Mixin в объект
module Test
    def say(name)
        "Test #{name}"
    end
end

class Greet
    extend Test
end
puts Greet.say('++')

#Kernel
puts "Test 3"
Kernel.puts 'Test 4'

module Kernel
    def says
        "++"
    end
end

puts says

#Проверка цепочки наследования;
#prepend
module NewTesting
    def output(input)
        "Test, write: #{input}"
    end
end

class OutTesting
    include NewTesting
end

p Object.ancestors
p OutTesting.ancestors