#О конструкторах;
class Ticket
    #переменная класса
    @@counter = 0
    def initialize
       #Увеличиваем на единицу
       @@counter += 1
    end
    #Возвращаем значение
    def counter
        @@counter
    end
end

#Два объекта билетов;
ticket01 = Ticket.new
ticket02 = Ticket.new

#Вывод;
puts ticket02.counter

#Использование блоков;
#Для инициализации;
class Palette
    def initialize(colors = [])
        @colors = colors
        #Вызов блока
        if block_given?
            #Результат блока присваиваем инстансу;
            @colors = yield
        end
    end
end
#Цвета в палитру;
colors = %[red orange yelloe green blue indigo violet]
pal = Palette.new(colors)
p pal

#Тоже самое, сокращенно;
class Palette
    def initialize(colors = [])
        @colors = colors
        @colors = yield if block_given?
    end
    #Получение результатов:
    def each
        @colors.each{|c| yield c}
    end
end
#Цвета в палитру;
colors = %[red orange yelloe green blue indigo violet]
#Объект класса;
pal = Palette.new(colors)
#просто вызов
p pal
#Через each метод
pal.each {|color| puts color}
#Разделитель
puts '#'*10
#При помощи блока;
pal1 = Palette.new do
   %[red orange yelloe green blue indigo violet]
end
pal1.each {|color| puts color} 