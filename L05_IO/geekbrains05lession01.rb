#Создание собственного класса.
puts "Test message;"

__END__
#Реализация через метапрограммирование;
#Класс;
class MultyPhor
    #Константа
    COLORSHASH = {
        #Key:value;
        red: 'Стоп',
        orange: 'Запрет;',
        yellow: 'Ожидание;',
        green: 'Разрешен;',
        blue: 'Встречное;',
        indigo: 'Перевод;',
        violet: 'Полный стоп;'
    }
    #Перебор элементов хэша;
    #Итератор; принимает ключ и значение;
    COLORSHASH.each do |method, name|
        #Define создаем метод совпадающий с ключом;
        define_method method do
            #Внутри возвращаем значение;
            name
        end
    end
end
#Объект;
temp = MultyPhor.new
#Вызов;
puts temp.yellow
puts temp.red

#Реализация через method_missing
class MultyPhor
    #Константа
    COLORSHASH = {
        #Key:value;
        red: 'Стоп',
        orange: 'Запрет;',
        yellow: 'Ожидание;',
        green: 'Разрешен;',
        blue: 'Встречное;',
        indigo: 'Перевод;',
        violet: 'Полный стоп;'
    }
    #Перехват обращение к несуществующим методам;
    #Позволяет реализовать реакцию объектов класса на вызов;
    #На вызов таких методов;
    #Получив название, получаем ключ;
    def method_missing(name)
        COLORSHASH[name]
    end
end
#Объект;
temp = MultyPhor.new
#Вызов;
puts temp.yellow
puts temp.red

__END__
#Создание методов при помощи метапрограммирования;
#Служит для границ прозрачности переменных;
#При неизвестности переменных;
class Veta
    #Создание метода;
    define_method :cube do |argument|
        #Механика;
        argument ** 3
    end
end
#Объект;
result = Veta.new
#Вызов;
puts "Куб числа равен: #{result.cube(12)}"

#Полный аналог Veta без символа;
# class Veta
    #Метод и аргумент;
    # def cube(argument)
        #Аргумент в степень;
        # argument**3
#     end
# end
#Объект;
# result = Veta.new
#Вызов;
# puts result.cube(12)

__END__
#Снова;
class User
    #Переопределение методов можно делать один за другим
    def method
        puts "Сообщение 1; Метод в исходном состоянии;"
    end
    #Этот метод уже переопределен;
    def method
        puts "Сообщение 2; Метод переопределен;"
    end
end

message = User.new
message.method

#Пишем в теле класса любой руби код
class Enter
    puts "Начало класса;"
    puts "Завершение класса;"
end
#Объект => вывод
work = Enter.new
puts "Дамп класса: #{work}"

#Переопределение метода по условию;
class Encode
    #Сообщение => старт;
    puts "Start;"
    #Исходный метод;
    def pillar
        puts 'Определяем метод pillar;'
    end
    #Условие;
    if RUBY_VERSION == '2.3.3'
        #Если условие истино, переопределяем;
        def pillar
            puts "Метод pillar переопределен;"
        end
    end
    #Сообщение => завершение;
    puts "Ending;"
end
#Объект
reroll = Encode.new
#вызов
puts reroll

__END__
#Через require, тест вызова без констант;
#Другая сторона, вызов;
require_relative 'class'
#Присваиваем, создаем объект на нашей стороне
ourSide = OtherSide.new
#Вызов метода отдельно с другой стороны;
puts "Our side test: #{ourSide.side}"
#Вызов объекта с методом с другой стороны'
puts "They side test: #{theySide.side}"


__END__
#Иной метод создания класса;
#Дали имя класса = новый класс;
UserClass = Class.new
#Создаем объект класса;
user = UserClass.new
#Выводим:
puts "Дамп класса: #{user}"
puts "Тест пользователя;"

#Чтобы задать методы, используем конструктор do end;
#имя класса = новый класс;
MessageClass = Class.new do
    def say
        'Сообщение;'
    end
end
#Создаем объект класса;
message = MessageClass.new
#Дамп
puts "Дамп класса: #{message}"
#Выводим метод:
puts message.say

#Чтобы с маленькой буквы используем
#Конструктор класса class;
#Это - обход соглашения. Это - рисковано.
alert_class = Class.new do
    def alert
        'Предупреждение;'
    end
end
#Создаем объект класса;
warning = alert_class.new
#Дамп
puts "Дамп класса: #{warning}"
#Выводим метод:
puts warning.alert

#Конец программы;
__END__
#Это класс:
class ClassName
    def method_name
        'Test is work;'
    end
end
#А это - объект класса:
object = ClassName.new
#Дамп объекта;
puts "Дамп объекта: #{object}"
#Вызов метода класса;
puts object.method_name