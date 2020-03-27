$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  integer=0
  i = 0
  while i < director_data[:movies].length do
  integer += director_data[:movies][i][:worldwide_gross]
  i += 1
  end
 integer
end
 
def directors_totals(nds)
  result = {}
  director_i = 0
  while director_i < nds.length do
    result[nds[director_i][:name]] = gross_for_director(directors_database[director_i])
    director_i += 1
  end
 result
end