require 'pry'

# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with? ("r")}
end

def contain_a(array)
  array.select {|word| word.include? ("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
array.group_by(&:itself)                   
 .map{|k, v| k.merge(count: v.length)}
end

def merge_data(array1,array2)
  array = []
  array1.each_index do |x|
    array2[0].keys.each do |name|
      array << array1[x].merge(array2[0][name]) if name == array1[x][:first_name]
    end
  end
  return array
end

def find_cool(array)
  cool_array = []
  array.each do |x|
    x.each do |key, value|
      if value == "cool"
        cool_array << x
      end
    end
  end
  return cool_array
end

def organize_schools(array)
  new_hash = {}
  array.each do |school, hash|
    hash.each do |key, value|
     if new_hash[value] == nil 
       new_hash[value] = [school]
     else
       new_hash[value] << school
     end
    end
  end
  return new_hash
end