#Разбор пятого домашнего задания;

# 1. Создайте класс Hello, при создании объекта 
# которого конструктору можно было бы 
# передавать параметр Hello.new('world'). 
# При вызове метода say этого объекта hello.say 
# или при выводе объекта методом puts должна 
# выводиться фраза 'Hello world!', 
# где подстрока world задается параметром конструктора.

#Класс
# class Hello
    #Для чтения значиения за пределами объекта;
    # attr_reader :name
    #Для инициализации
    # def initialize(name)
        #Переменные
    #     @name = name
    # end
    #Строка, чтобы не вызвать дамп;
    # def to_s
    #     "Hello #{name}"
    # end
    #Вызов строки; Реализация метода say;
    # def say
    #     to_s
    # end
    #Проще через alias
#     alias say to_s
# end
#Передача строкового параметра;
# hello = Hello.new('world')
#Вызов
# puts hello
# puts hello.say


# 2. Создайте класс пользователя User, который бы при 
# создании объекта позволял задавать фамилию, 
# имя и отчество. Метод должен реализовывать 
# методы чтения и установки фамилии, имени и отчества. 
# Кроме того, объект класса пользователя должен:
# * позволять сложение со строкой;
# * вызывать метод full_name, который возвращает 
# строку с именем пользователя;
# * поддерживать метод, который возвращает имя,
# фамилию и отчество в виде массива.

#Создаем класс
# class User
    #Ацессор сохарняет параметры
    # attr_accessor :name, :family, :patronim
    #Метод принимает три параметра;
    # def initialize(name:, family:, patronim:)
        #Параметры;
        #@name = name значит принимает параметры и сохраняет
    #     @name = name
    #     @family = family
    #     @patronim = patronim
    # end
    #Возвращаем user в виде массива
    # def to_a
    #     [@family, @name, @patronim]
    # end
    #join - записываем в массив и отделяем пробелом;
    #Чтобы вывести что-то одной строкой реализовываем метод to_S
    # def to_s
    #     to_a.join(' ')
    # end
    #Чтобы сложить со строкой
    # alias to_str to_s
    #Метод fullname
#     alias fullname to_s
# end
#Объект который позволяет задавать параметры;
#Параметры позиционные;
# userFull = User.new(family:"Sidorov", name:"Sas", patronim:"Chernobylewitch")
# puts userFull
#Складываем user со строкой
# puts "Hallo, #{userFull.fullname}!"
# puts userFull.to_a

# 3. Создайте класс Group, конструктор которого 
# может принимать произвольное количество объектов 
# класса User (из предыдущего задания). 
# Реализуйте вывод списка пользователей с 
# использованием класса Group.

#Импорт;
# require_relative 'userfly.rb'
#Создали класс
# class Group
    #Используем сплат оператор
    #Указывается для указания неограниченного кол-ва объектов
    #Сам параметр является массивом и сохраняется в инстанс
    # def initialize(*users)
    #     @users = users
    # end
    #Обход списка;
#     def each
#         @users.each{|u| yield u}
#     end
# end
#Создаем трех пользователей;
# group = Group.new(
#     User.new(family: 'Sas', name: 'Ses', patronim: 'Sys'),
#     User.new(family: 'Asd', name: 'Asq', patronim: 'Asw'),
#     User.new(family: 'Zxc', name: 'Xcz', patronim: 'Vxz')
# )

#Вывод списка пользователей 
# group.each{|u| puts u.fullname}

# 4. *Создайте класс Settings, конструктор которого 
# принимает блок и позволяет установить произвольные 
# параметры setting = Settings.new { |s| s.hello = 'world' }.
#  Имена параметров вида s.hello могут быть произвольными. 
#  Заданные в блоке конструктора значения должны быть 
#  доступны через одноименные методы объекта 
#  setting.hello. Обращение к параметру, 
#  который не был задан при создании объекта, 
# должно приводить генерации исключительной ситуации.

# 5. *Пусть имеется фабрика, которая выпускает 
# детские игрушки: плюшевый медвежонок, мяч, кубики. 
# Создайте класс, который моделирует работу фабрики. 
# Реализуйте в классе подсчет каждого созданного 
# объекта-игрушки (медвежонок, мяч, кубики). 
# Используйте для учета классовые переменные.