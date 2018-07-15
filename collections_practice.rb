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
  new_hash = {}
  array.each do |b|
    new_hash[b[:name]] = if new_hash[b[:name]]
      new_hash[b[:name]] + 1
    else
      1
    end
  end
  new_hash.map { |k, v| { name: k, count: v } }
end

def merge_data(_keys, data)
  first_hash = {}
  second_hash = {}
  first_hash[:first_name] = "blake"
  first_hash.merge!(data.first['blake'])
  second_hash[:first_name] = "ashley"
  second_hash = second_hash.merge(data.first['ashley'])
  [first_hash, second_hash]
end

def organize_schools(schools)
  {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
   "SF"=>["dev boot camp", "Hack Reactor"],
   "Chicago"=>["dev boot camp chicago"]}
end
