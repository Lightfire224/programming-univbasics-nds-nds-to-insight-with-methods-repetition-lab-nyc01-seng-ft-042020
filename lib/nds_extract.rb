$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def list_of_directors(source)
  dir_ls=[]
  dir_ls_i=0
  while dir_ls_i<source.length
  dir_ls << source[dir_ls_i][:name]
  dir_ls_i+=1
  end
  dir_ls
end

def total_gross(source)
    counter = 0
    grand_total = 0
    director_total = directors_totals(source) 
    director_list = list_of_directors(source)
    while counter < director_list.length do
      total += director_total[director_list[i]]
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