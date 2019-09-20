class Zoo
  @@all = []
  attr_reader :name, :location
  
  def initialize(name, location)
    @name = name 
    @location = location 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def animals 
    Animal.all.select do |animal|
      animal.zoo == self 
    end 
  end 
  
  def animal_species
    unique_animals=self.animals().map do |a_s|
      a_s.species   
    end 
    #self.animals.map(&:species) 
    unique_animals.uniq
  end 
  
  def find_by_species(animal_s)
    animal_species.select do |species|
      species == animal_s 
    end 
  end 
  
  def animal_nicknames
    self.animals.map do |animal|
      animal.nickname 
    end 
  end 
  
  def find_by_location(location)
    Zoo.all.select do |zoo|
      zoo.location == location
    end 
  end 
  
end
