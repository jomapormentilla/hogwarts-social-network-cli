class Wizard
    extend Findable::ClassMethods
    include Findable::InstanceMethods
    
    attr_accessor :name, :role, :house, :spells, :friends, :enemies

    @@all = []

    def initialize( name, role, house="Unknown" )
        @name = name
        @role = role
        @spells = []
        @friends = []
        @enemies = []

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