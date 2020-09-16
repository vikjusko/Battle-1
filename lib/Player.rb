class Player 
    attr_reader :name
    def initialize(name = "A name")
        @name = name
    end

    def say_name
        @name
        
    end
end