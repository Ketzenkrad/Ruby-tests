# 2. Создайте класс любого объекта, например, холодильника. 
# Представьте, что с холодильником могут взаимодействовать мастера, 
# которые его чинят и люди, которые им пользуются. 
# Если скучно возиться с холодильником — придумайте свой пример. 
# В примере должен быть класс и минимум два инстанс-метода класса, 
# один из которых демонстрирует 
# использование private-метода.

class Refrigerator
    def temperature_value
        if temperature_value == @valueOne
            temperature_value(@valueTwo)
        else
            temperature_value(@valueOne)
        end
    end
    def show_temperature
        @temperature_value
    end

    private
    attr_accessor :temperature_value, :valueOne, :valueTwo
    def initialize
        @temperature_value = -6.3
        @valueOne = -4.5
        @valueTwo = -13.8        
    end
    def temperature_value(current)
        @temperature_value = current
    end
end

testing = Refrigerator.new
puts 'Changes of t'
puts testing.show_temperature
testing.temperature_value
puts testing.show_temperature