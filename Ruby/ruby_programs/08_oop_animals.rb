module Describable
  def describe
    "#{name} is a #{self.class.name.downcase} that says #{sound}"
  end
end

class Animal
  include Describable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def sound
    "..."
  end
end

class Dog < Animal
  def sound
    "Woof"
  end
end

class Cat < Animal
  def sound
    "Meow"
  end
end

animals = [Dog.new("Rex"), Cat.new("Whiskers"), Dog.new("Buddy")]

animals.each { |a| puts a.describe }
