require 'pry'

def my_collect(empty_array)
  i = 0
    while i < empty_array.length
      yield(collection[i])
    end
    i += 1
  end
end
