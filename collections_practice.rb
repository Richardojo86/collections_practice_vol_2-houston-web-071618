 def begins_with_r(array)
array.all? {|word| word[0].include? ("r")
}
end

def contain_a(array)
  new_arr = []
  array.collect{|word| if word.include?("a") 
  new_arr << word 
end 
}
new_arr
end 
 
def first_wa(array)
new_arr = []
  array.each{|w| new_arr << w.to_s}
  new_arr.any?{|word| if word.start_with?('wa')
  return word
end }
end 

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end 

def count_elements(array)
freq = Hash.new(0)
array.each { |x| freq[x] += 1 }
freq.each{ |key, value| }
end

def merge_data(keys, data)
keys[0].values.map.with_index {|key, i| data[i].merge(v)}
end 
