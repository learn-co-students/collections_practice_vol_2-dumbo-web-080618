require "pry"

def begins_with_r(array)
  array.all?{|value| value.start_with?("r")}
end

def contain_a(array)
  array.select {|name| name.include?("a")}
end

def first_wa(array)
  array.find {|value| value[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(array)
  array.uniq.each do |name|
    name[:count] = array.count(name)
  end
end

def merge_data(keys,data)
    merge_data = []
    keys.each do |person|
      data.each do |hash|
        hash.each do |name ,info|
            if person[:first_name] == name
              merge_data << person.merge(info)
            end
          end
        end
      end
      merge_data
    end




def find_cool(arrayOfObj)
  array = [] 
  arrayOfObj.each do |obj|
    obj.each do |key, value|
      if value == "cool"
        array.push(obj)
      end
    end
  end
  array
end

def organize_schools(hash)
  new_hash = {}
  array = []
  hash.each do | schools, details|
    details.each do |key , location|
      if !(new_hash.key?(location))
        new_hash[location] = [schools]
      else
        new_hash[location] << schools
      end
    end
   end
  new_hash
end
      
      
    
