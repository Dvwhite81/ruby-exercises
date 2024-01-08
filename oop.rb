# frozen_string_literal: true

x = String.new('i wish i was surfing')
puts x # "i wish i was surfing"

puts String.new("i thought he said this wasn't going to be abstract...")

# puts "hi".methods()

puts 'hello'.upcase

puts 'sUp DuDe'.swapcase

puts 'This is a sentence, kinda'.split

puts []

my_array = []
my_array.push('nice')
my_array.push('hair')
puts my_array.inspect

a = []
a.push(String.new('fun'))
a.push(String.new('games'))
puts a.inspect

# Classes
class Dog
  def speak
    'ruff ruff'
  end
end

spot = Dog.new
puts spot.speak

# Can use parentheses or not
class Penguin
  def looks
    'We are cute!'
  end
end

p = Penguin.new
puts p.looks

class Fish
  def self.general_overview
    'Fish are animals that live in the sea'
  end
end
# This works
puts Fish.general_overview
# This doesn't -- because of self
# nemo = Fish.new()
# puts nemo.general_overview()

# This works
class Calculator
  def add(x, y)
    x + y
  end
end

calc = Calculator.new
puts calc.add(3, 4)

# With self, it must be called on the class
# Not an instance
class Calculator
  def self.add(x, y)
    x + y
  end
end

puts Calculator.add(3, 4)

# Define class instantiated with name
class Person
  # initialize() - special method that is run
  # when Person.new() is executed
  def initialize(name)
    # @name - instance variable used to maintain state
    # Can be used by instance methods throughout Person class
    @name = name
  end
end
# Create Person named Fred
# No method to return name
Person.new('Fred')

class Lion
  def initialize(name)
    @name = name
  end

  def return_lions_name
    @name
  end
end

simba = Lion.new('Simba')
puts simba.return_lions_name
# Simba

class Celsius
  def initialize(temp)
    @temp = temp
  end

  def to_fahrenheit
    @temp * 1.8 + 32
  end
end

celsius = Celsius.new(10)
puts celsius.to_fahrenheit
# 50.0
#
#
#
#
#
class Dog
  def initialize(name)
    @name = name
  end

  def bark
    'Ruff ruff'
  end
end

benny = Dog.new('Benny')
puts benny.bark

class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def get_years
    @age_in_days.to_f / 365
  end
end

bug = Insect.new(5342)
puts bug.get_years

#
# CLASS METHOD
class Lamp
  def self.about_me
    # OR
    # def Lamp.about_me()
    "We brighten up people's lives"
  end
end

class WaterBottle
  def initialize(size)
    @size = size
  end

  attr_reader :size
end

stanley = WaterBottle.new(64)
puts stanley.size

class Person
  def initialize(age)
    @age = age
  end

  attr_accessor :age
end

bob = Person.new(45)
puts bob.age
bob.age = (21)
puts bob.age
