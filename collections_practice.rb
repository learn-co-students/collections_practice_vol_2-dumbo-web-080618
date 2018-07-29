require 'pry'
def begins_with_r(array)
  array.all? {|item| item.start_with?('r')}
end

def contain_a(array)
  array.select {|item| item.include?('a')}
end

def first_wa(array)
  array.find {|item| item.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.select {|item| item.is_a? String}
end

def count_elements(array)
  result = []
  used_names = []
  array.each do |object|
    object.each do |k,v|
      if !used_names.include?(v)
        hash = Hash.new
        used_names << v
        hash[k] = v
        hash[:count] = 1
        result << hash
      else
        item = result.find {|object| object.keys.include?(k)}
        item[:count] = item[:count] + 1
      end
    end
  end
  result
end

def merge_data(keys, data)
  result = []
  # puts keys
  # puts data
  keys.each do |object|
    object.each do |k,v|
      temp = {}
      temp[:first_name] = v
      data.each do |object|
        object.each do |ke, va|
          if ke == v
            temp.merge!(va)
          end
        end
      end
      result << temp
    end
  end
  result
end

def find_cool(array)
  result = []
  array.each do |object|
    temp = Hash.new
    object.each do |key, val|
      temp[key] = val
      if key == :temperature && val == "cool"
        result.push(temp)
      end
    end
  end
  result
end

def organize_schools(array)
  result = {}
  array.each do |school, location_hash|
    if result.keys.include?(location_hash[:location])
      result[location_hash[:location]].push(school)
    else
      result[location_hash[:location]] = [school]
    end
  end
  result
end
