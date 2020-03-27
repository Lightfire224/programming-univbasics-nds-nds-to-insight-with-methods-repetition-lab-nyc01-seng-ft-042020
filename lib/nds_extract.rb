$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def list_of_directors(source)
  director_list=[]
  counter= 0
  while counter<source.length
  director_list << source[counter][:name]
  counter +=1
  end
  director_list
end

def total_gross(source)
    counter = 0
    grand_total = 0
    director_total = directors_totals(source) 
    director_list = list_of_directors(source)
    while counter < director_list.length do
      grand_total += director_total[director_list[counter]]
      counter += 1
    end
    grand_total
  end

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