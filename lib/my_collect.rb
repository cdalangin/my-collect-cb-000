require 'pry'

def my_collect(empty_array)
  i = 0
  thing = []
    while i < empty_array.length
      thing << yield(empty_array[i])
    i += 1
  end
  thing
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
