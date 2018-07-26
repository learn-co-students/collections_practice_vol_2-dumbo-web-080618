require 'pry'

def begins_with_r(arr)
  arr.any? do |word|
    return false if !word.start_with?("r")
end
  true
end 

def contain_a(arr)
  arr.select{|letter| letter.include?("a")}
end 

def first_wa(arr) 
  arr.find{|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(arr)
  arr.delete_if{|x| x.class != String}
end 

def count_elements(array)
counts = Hash.new(0)
    array.each{|name| counts[name] += 1}
  return_arr = []
    counts.each do |name, count|
      name.each do |key, value|
        return_arr << {key => value, :count => count}
      end
    end
    return_arr
end

def merge_data(arr1,arr2)
	merged =[]
	arr1.each_index do |i|
		arr2[0].keys.each do |name|
			merged << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
		end
	end
	merged
end


def find_cool(arr)
  arr.select do |item| 
    item.has_value?('cool')
   end
end
  
def organize_schools(schools)
  organized_schools = {}
     schools.each do |name, hash|
        location = hash[:location]
  organized_schools[location] ||= []
  organized_schools[location] << name
end
organized_schools
end




