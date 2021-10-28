require 'pry'

# DONE
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# DONE
def get_names(spicy_foods)
  names = spicy_foods.map do |name|
    name[:name]
  end
end

# DONE
def spiciest_foods(spicy_foods)
  spicy = spicy_foods.filter do |food|
    food[:heat_level] > 5
  end
end

# DONE
def print_spicy_foods(spicy_foods)
  food = spicy_foods.map do |info|
    puts "#{info[:name]} (#{info[:cuisine]}) | Heat Level: " + "🌶"*info[:heat_level]
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  food = spicy_foods.find { |arr| arr[:cuisine] == cuisine }
end

# DONE
def sort_by_heat(spicy_foods)
  sorted_foods = spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

# DONE
def print_spiciest_foods(spicy_foods)
  spicy = spicy_foods.map do |food|
    if food[:heat_level] > 5
      puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶"*food[:heat_level]
    end
  end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  spicy_foods.map { |food| food[:heat_level] }.sum / spicy_foods.count
end
