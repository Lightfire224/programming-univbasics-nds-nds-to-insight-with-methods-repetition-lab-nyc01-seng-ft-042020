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

def total_gross(directors_database)
  
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