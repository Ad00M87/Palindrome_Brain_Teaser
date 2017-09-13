require 'colorize'

def palindrome
  puts 'Please type in your word or sentence to check for a palindrome'.colorize(:blue).on_light_blue
  input = gets.strip
  change = input.downcase.split('')
  item = change.reject { |character| character == ' ' || character == ',' }

  reversed = []

  for letter in item
    reversed.unshift(letter)
  end

  if item == reversed
    puts "#{input} - is a palindrome!\n".colorize(:green)
  else
    puts "#{input} - is not a palindrome.\n".colorize(:red)
  end

  palindrome
end

palindrome
