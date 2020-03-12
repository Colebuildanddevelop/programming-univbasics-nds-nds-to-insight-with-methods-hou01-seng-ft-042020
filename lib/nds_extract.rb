$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0 
  total_gross = 0
  while director_data[:movies][movie_index] do 
    movie_hash = director_hash[:movies][movie_index]
    total_gross += movie_hash[:worldwide_gross]
    movie_index += 1
  end 
  total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)

  director_leaderboard = {}
  index = 0 
  while nds[index] do 
    director_hash = nds[index]
    puts director_hash
    
    director_name = director_hash[:name]

    director_leaderboard[director_name] = gross_for_director
    index += 1 
  end
  director_leaderboard
end
