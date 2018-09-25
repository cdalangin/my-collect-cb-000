require 'pry'

def my_collect(empty_array)
  i = 0
    while i < empty_array.length
      yield(collection[i])
    end
    i += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
