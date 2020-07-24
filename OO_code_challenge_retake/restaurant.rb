Class Resturant 
    
    attr_accessor :name, :star_rating

    @@all = []
    
    def initialize(name, star_rating)
        @name = name 
        @star_rating= star_rating
        @@all << self
    end 

    def recipes
        Recipe.all.select {|recipe| recipe.restaurant == self}
    end 

    def restaurant
        self.recipes.all {|recipe| recipe.restaurant}
    end 

    def self.highest_rated
        Resturant.all.max_by {|restaurant| restaurant.star_rating}
    end

    def self.find_by_name(name)
        self.all.find {|restaurant| restaurant.name == self}
    end 

    def recipe_previews
        self.recipes.map {|recipe| recipe.description[0...14]}
    end 
end
