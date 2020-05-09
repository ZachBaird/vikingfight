# frozen_string_literal: true

require 'colorize'
require_relative 'viking'

# Prints Viking status to the terminal
def print_stats(viking)
  puts "#{viking.name} Information:"
  puts "Name: #{viking.name}".blue
  puts "Health: #{viking.health}".green
  puts "Age: #{viking.age}".yellow
  puts "Strength: #{viking.strength}".red

  puts("\n")
end

haraldr = Viking.create_viking('Haraldr')
sigurdr = Viking.create_viking('Sigurdr')

print_stats(haraldr)
print_stats(sigurdr)

puts "Let the fight commence!\n"
11.times { haraldr.attack(sigurdr) }
