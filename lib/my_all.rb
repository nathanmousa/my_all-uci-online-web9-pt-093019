require 'pry'

def my_all?(collection)
  i = 0
  stored = []
  
  while i < collection.length
    stored << yield(collection[i])
    i += 1
  end
  if stored.include?(false)
    false
  else
    true
  end
end

my_all?([1,2,3]) {|i| i < 2}