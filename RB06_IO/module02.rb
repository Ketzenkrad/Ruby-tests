# 3. *Пусть имеется фабрика, которая выпускает детские игрушки: 
# плюшевый медвежонок, мяч, кубики. Создайте класс Factory, 
# который имеет метод Factory.build, возвращающий объект 
# классов BearCub, Ball или Cube, 
# соответствующих одной из игрушек. В качестве параметра, 
# метод должен принимать один из спимволов :bear_cub, :ball, :cube, 
# по которым будет приниматься решение о том, 
# объект какого класса следует вернуть.

class Factory
  #Items
class BearCube
    def initialize
      puts 'BearCube is completed'
    end
end

class Ball
    def initialize
      puts 'Ball is completed'
    end
end

class Cube
    def initialize
      puts 'Cube is completed'
    end
end

  def build(construct)
    item = %i[bear ball cube]
    if construct == item[0]
      BearCube.new
    elsif construct == item[1]
      Ball.new
    elsif construct == item[2]
      Cube.new 
    else
      puts 'Incorrect item;'
    end
  end
end

factory = Factory.new
factory.build(:bear)
factory.build(:ball)
factory.build(:cube)
factory.build(:s)