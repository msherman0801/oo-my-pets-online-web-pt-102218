require 'pry'
class Owner
  
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all 
    @@all.clear 
  end
  
  def self.count 
    @@all.count 
  end
  
  def species
    @species = "human"
  end 

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
<<<<<<< HEAD
=======
    fish
>>>>>>> f0731a18dcaea54fddf868b1da758e7bcc89d270
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
<<<<<<< HEAD
=======
    cat
>>>>>>> f0731a18dcaea54fddf868b1da758e7bcc89d270
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
<<<<<<< HEAD
    @pets[:dogs] << dog
=======
    @pets[:dogs] << dog 
    dog
>>>>>>> f0731a18dcaea54fddf868b1da758e7bcc89d270
  end 
  
  def say_species
    "I am a #{self.species}."
  end
  
  def walk_dogs 
    @pets[:dogs].each do |i| 
      i.mood = "happy"
    end
  end
  
  def play_with_cats 
    @pets[:cats].each do |i| 
      i.mood = "happy"
    end
  end
  
  def feed_fish 
    @pets[:fishes].each do |i| 
      i.mood = "happy"
    end
  end
  
  def sell_pets 
    @pets.each do |k,v|
      v.each { |i| 
      i.mood = "nervous"
      }
      v.clear
    end
<<<<<<< HEAD
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
=======
    binding.pry
  end

>>>>>>> f0731a18dcaea54fddf868b1da758e7bcc89d270
end