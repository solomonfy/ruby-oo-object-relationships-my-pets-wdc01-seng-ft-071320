require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    # "I am a human."
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.find_all do |cat|
    cat.owner == self
    end
  end

  def dogs
    Dog.all.find_all do |dog|
    dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    # Cat.all.each do |cat|
    #   cat.mood = "happy"
    # end
    Cat.all.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    Cat.all.each do |cat|
      cat.owner = nil
      cat.mood = "nervous"
    end
    Dog.all.each do |dog|
      dog.owner = nil
      dog.mood = "nervous"
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end

# john = Owner.new("John")
# ami = Owner.new("Ami")
# john.buy_cat(ami)
# ami.dogs
# ami.cats
# # puts john.species
# tom = Owner.new("Tom")
# Owner.all