# Describes a Viking's properties and actions.
class Viking
  attr_accessor :name
  attr_accessor :health
  attr_accessor :age
  attr_accessor :strength
  attr_reader :dead

  def initialize(name, health, age, strength)
    @name = name
    @health = health
    @age = age
    @strength = strength
    @dead = false
  end

  def self.create_viking(name)
    age = (rand * 20 + 15).round(0)
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    Viking.new(name, health, age, strength)
  end

  def attack(recipient)
    if recipient.dead
      puts "#{recipient.name} is already dead"
      return false
    end

    damage = (rand * 10 + 10).round(0)
    recipient.take_damage(damage)
  end

  protected

  def take_damage(damage)
    self.health -= damage
    puts "Ouch! #{@name} has taken #{damage} damage! He has #{@health} left!"
    die if @health <= 0
  end

  private

  def die
    puts "#{@name} has died!"
    @dead = true
  end
end