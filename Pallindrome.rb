require 'colorize'

def palindrome
  puts 'Please type in your word or sentence to check for a palindrome'.colorize(:blue).on_light_blue
  input = gets.strip
  change = input.downcase.split('')
  item = change.reject { |l| l == ' ' }

  reversed = []

  for l in item
    reversed.unshift(l)
  end

  if item == reversed
    puts "#{input} - is a palindrome!".colorize(:green)
  else
    puts "#{input} - is not a palindrome.".colorize(:red)
  end

  palindrome
end

palindrome
