Class Recipe 
    
    attr_reader :name 
    attr_writer :description

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end 
end 