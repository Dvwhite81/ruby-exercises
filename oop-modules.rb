# frozen_string_literal: true

# Modules define methods that can be
# added to classes, to organize and reuse

# They cannot be instantiated, but
# can be included
module Clueless
  def funny
    'AS IF?!'
  end
end

class Actress
  include Clueless
end

alicia = Actress.new
puts alicia.funny # AS IF?!

module HappyHappy
  def say_something
    'Happy happy, joy joy'
  end
end

class Person
  include HappyHappy
end

class Alien
  include HappyHappy
end

joe = Person.new
puts joe.say_something

asdf = Alien.new
puts asdf.say_something

module MathHelper
  def multiply_by_two(num)
    num * 2
  end
end

class Homework
  include MathHelper
end

algebra = Homework.new
puts algebra.multiply_by_two(7)

#
#
#
# Inheritance - access all methods of parent class
class Mammal
  def heartbeat?
    true
  end
end

class Dog < Mammal
end

nibbles = Dog.new
puts nibbles.heartbeat?
puts nibbles.methods.include?(:heartbeat?)
puts Dog.ancestors

class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    (@hits.to_f / @at_bats)
  end

  def on_base_percentage
    ((@hits + @walks).to_f / @at_bats)
  end
end

mickey = BaseballPlayer.new(430, 77, 800)
puts mickey.batting_average
puts mickey.on_base_percentage

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  attr_reader :first_name, :last_name

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

john_smith = Person.new('John', 'Smith')
puts john_smith.full_name

module MathHelpers
  def exponent(base, power)
    (base**power)
  end
end

class Calculator
  include MathHelpers

  def square_root(number)
    exponent(number, 0.5)
  end
end

calc = Calculator.new
puts calc.square_root(4)
puts calc.square_root(64)
