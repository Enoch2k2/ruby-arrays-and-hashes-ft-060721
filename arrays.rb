require_relative './environment'

# Arrays
array = ['Bob', 'Mark', 'Lisa', 'Monique']

## ACCESSING ARRAYS
# array.first(2) gives first 2 elements
# array.last(2) gives last 2 elements
array[1] # returns Mark
array[array.length - 1] # gives last element
array[-1] # also gives last element


## Change an element destructively
array[1] = "Leon" # changes Mark to Leon
# array[-1] = 'something else' doesn't work

## ARRAY METHODS
array.length # returns how many elements
array.size
array.count
array.include?("Lisa") # works just like javascript, returns true or false

## Array destructive methods
array.unshift('Jay') # adds to front
array.shift # removes from front
array.push('Lena') # adds to end
array << 'Mike' # also adds to end
array.pop # removes from end

# Iterators
# array.each.with_index(1) do |name, index|
#   puts "#{index}. #{name}"
# end # this is specifically like forEach in javascript

# mapped_array = array.collect!.with_index(1) do |name, index|
#   "#{index}. #{name}"
# end

# found_element = array.detect {|name| name.length == 23} # find / detect an element

# found_elements = array.filter! {|name| name.length == 4}

# element_count = array.count {|name| name.length == 4}

### YIELD

def count_characters_and_multiply(array)
  index = 0
  new_array = []

  while index < array.length
    element = array[index]
    length = element.length
    yielded_value = yield(length, index)
    new_array << yielded_value
    index += 1
  end

  new_array
end

counted_characters = count_characters_and_multiply(array) do |count, index|
  index * count
end


# binding.pry
### TIC TAC TOE