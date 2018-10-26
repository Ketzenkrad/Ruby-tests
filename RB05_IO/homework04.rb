# 4. *Создайте класс Settings, конструктор которого 
# принимает блок и позволяет установить произвольные параметры 
# setting = Settings.new { |s| s.hello = 'world' }. 
# Имена параметров вида s.hello могут быть произвольными. 
# Заданные в блоке конструктора значения должны быть 
# доступны через одноименные методы объекта setting.hello. 
# Обращение к параметру, который не был задан при создании объекта, 
# должно приводить генерации исключительной ситуации.

class Storage
    attr_accessor :storage
    def initialize
        @storage = {}
    end
    def method_missing(name, *arguments)
        methods = name.to_s
        return unless methods.end_with?('=')
        @stor[method.chomp('=')] = args.first
    end
end

stor = Storage.new

class Settings
    def initialize
        yield @object
    end
    def method_missing(name)
        @object.send(name) if @object.respond_to? name
    end
end

setting = Settings.new do |s|
    s.hello = 'world'
    s.page = 1
    s.number = 30
end

puts setting.hello
puts setting.page
puts setting.number