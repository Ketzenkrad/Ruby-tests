class Hello
    attr_reader :name
    def initialize(name)
        @name = name
    end
    def to_s
        "Hello #{name}!"
    end
end
hello = Hello.new('world')
puts hello