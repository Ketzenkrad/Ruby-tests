# Наследование классов. 
# Иерархия классов стандартных классов

#Наследования и классы на примере веба
class Page
    #Реализуем основные свойства через attr_acessor
    #ЭТО геттеры и сеттеры [!!!]
    attr_accessor :title, :body, :headers
    def initialize(title:, body:, headers: [])
        @title = title
        @body = body
        @headers = headers
    end
end

#Класс для блока новостей
class News < Page
    #Добавляем свойство даты;
    attr_accessor :date
    #Автоматическое присваивание даты;
    def initialize(title:, body:, date:, headers: [])
        @date = date
        #Автовызов базового класса с передачей;
        #Методу super нужно явно указать параметры:
        super(title: title, body:body, headers:headers)
    end
end
#объект
news = News.new(title: 'News title.', body: 'Content', date: Time.new)
p news

#Класс для блока контактов
class About < Page
    #Добавляем свойство адресов и телефонов
    attr_accessor :phones, :address
end
#Объект страницы о нас
# about = About.new
#Данные в объекты информации;
# about.title = 'About us '
# about.body = 'Our contacts: '
# about.phones = ['8 888 888 88 88', '8 999 999 99 99']
#Вывод;
# puts about

#Класс для блока галереи
class PhotoCatalog < Page
    #Добавляем свойство фото
    attr_accessor :photos
end

#Объект страницы
# page = Page.new
#О странице
# page.title = 'Title'
# page.body = 'HTML body'