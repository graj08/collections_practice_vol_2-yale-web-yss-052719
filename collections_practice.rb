require 'pry'

def begins_with_r (tools)
  return_value = true
  tools.each do |x|
    if x[0] == "r"
      return_value = true
    else
      return false
    end
  end
  return_value
end

def contain_a (input_array)
return_array = Array.new
input_array.each do |word|
  if word.include?("a")
    return_array << word
  end
end
return_array
end

def first_wa (input_array)
  input_array.each do |word|
    if word[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings (input_array)
return_array = Array.new
  input_array.each do |element|
    if element.is_a? (String)
      return_array << element
    end
  end
  return_array
end

def count_elements (input_array)
input_array.group_by(&:itself).map do |key,value|
    key.merge({:count => value.length})
end
end

def merge_data(keys, data)
  new_keys_1 = {keys[0].keys.to_a[0] => data.to_a[0].to_a[0][0]}
  new_data_1 = new_keys_1.merge(data[0].values.to_a[0])
  new_keys_2 = {keys[1].keys.to_a[0] => data.to_a[0].to_a[1][0]}
  new_data_2 = new_keys_2.merge(data[0].values.to_a[1])
 [new_data_1, new_data_2]
end


def find_cool (hash)
  if cool[1].values[1] == "cool"
    [cool[1]]
  end
end

def organize_schools (schools)
  return_hash = Hash.new
  schools.each do |name,loc_hash|
    location_string = loc_hash[:location]
    if return_hash.keys.include?(location_string)
      current_value = return_hash[location_string]
      return_hash[location_string] = current_value.push(name)
    else
    return_hash[location_string] = [name]
  end
  end
  return_hash
end
