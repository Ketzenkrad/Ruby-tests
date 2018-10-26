# Создайте класс Hello, при создании объекта 
# которого конструктору можно было бы передавать 
# параметр Hello.new('world'). 
# При вызове метода say этого объекта hello.say или 
# при выводе объекта методом puts должна 
# выводиться фраза 'Hello world!', 
# где подстрока world задается параметром конструктора.

class Hello
  def initialize(argument)
    @argument = argument
  end

  def say
    to_s
  end

  def to_s
    "Hello #{@argument}!"
  end
end

greetings = Hello.new('world')
puts greetings.say
