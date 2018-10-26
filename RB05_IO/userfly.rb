class User

    attr_accessor :name, :family, :patronim

    def initialize(name:, family:, patronim:)
        @name = name
        @family = family
        @patronim = patronim
    end

    def to_a
        [@family, @name, @patronim]
    end

    def to_s
        to_a.join(' ')
    end

    alias to_str to_s
    alias fullname to_s
end
