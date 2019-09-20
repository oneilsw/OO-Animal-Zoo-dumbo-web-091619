class Animal
  
  attr_accessor :weight
  attr_reader :species, :nickname, :zoo  
  
  @@all = []
  
  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo 
    @@all << self 
  end 
  
  def find_by_species(animal_species)
    Animal.all.select do |species|
      species == animal_species
    end 
  end 
  
  def self.all
    @@all
  end 
   
end
