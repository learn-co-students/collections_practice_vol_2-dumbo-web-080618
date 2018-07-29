# your code goes here
def begins_with_r(arr)
  arr.all? do |elem|
    elem.start_with?('r')
  end
end

def contain_a(arr)
  arr.select do |elem|
    elem.include?('a')
  end
end

def first_wa(arr)
  arr = arr.map { |e| e.to_s }
  arr.find do |elem|
    elem.start_with?('wa')
  end
end

def remove_non_strings(arr)
  arr.select do |elem|
    elem == elem.to_s
  end
end

def count_elements(array)
  array.uniq.each do |i|
    occurrences = 0
    array.each do |j|
      if j == i 
        occurrences += 1
      end
    end
    i[:count] = occurrences
  end
end

def merge_data(keys, data)
  merged = []
  keys.each do |i|
    data.first.map do |k, j|
      if i.values[0] == k
        merged << i.merge(j)
      end
    end
  end
  merged
end

def find_cool(arr)
  cool_hashes = []
  arr.each do |e|
    if e[:temperature] == "cool"
      cool_hashes.push(e)
    end
  end
  cool_hashes
end

def organize_schools(schools)
  organized_schools = {}
    schools.each do |school, hash|
      hash.each do |sym, loc|
        if !organized_schools[loc]
          organized_schools[loc] = [school]
        else
          organized_schools[loc].push(school)
        end
      end
    end
    organized_schools
end


