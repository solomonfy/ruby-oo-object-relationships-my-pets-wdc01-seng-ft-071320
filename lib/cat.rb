class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

end

# c1 = Cat.new("Kitty", "Bob")
# c2 = Cat.new("Fifi", "Tom")
# c3 = Cat.new("Bibi", "Ami")
# c4 = Cat.new("Dodo", "Ami")

# print Cat.all