# your code goes here
def begins_with_r (array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa (array)
  array.find { |word| word[0..1] == "wa" }
end

def remove_non_strings(array)
  array.select { |word| word.class == String }
end

def count_elements(array)
  array.uniq.collect do |word|
    word[:count] = array.count(word)
    word
  end
end

def merge_data(keys, data)
  array = []
  data.each do |describe|
    describe.each do |name, value|
      keys.each do{ |key_name|
        if key_name.values[0] == name
          array << key_name.merge(value)
        end
      end
    end
  end
  array
end

def find_cool(cool)
  cool.select { |data| data[:temperature] == "cool" }
end

def organize_schools(schools)
  organize_schools = {}
  schools.each do |school_name, place|
    place.each do |location, city|
      if organize_schools.has_key?(city)
        organize_schools[city] << school_name
      else
        organize_schools[city] = [school_name]
      end
    end
  end
  organize_schools
end
