class Character
    attr_accessor :name, :role, :house, :spells

    @@all = []

    def initialize( name, role, house=nil )
        @name = name
        @role = role

        self.house=( house )
        
        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def house=( house )
        _house = House.all.find{ |obj| obj.name == house }
        @house = _house
    end
end