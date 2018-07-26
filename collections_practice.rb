def begins_with_r(tools)
  check = true

  tools.each do |word|
    check = false if word[0] != "r"
  end
  check
end

def contain_a(elements)
  elmts = []

  elements.each do |x|
    elmts.push(x) if x.include?("a")
  end
  elmts
end

def first_wa(element)
  wa = nil

  element.each do |word|
    if word.match(/wa/)
      wa = word
      break
    end
  end
  wa
end

def remove_non_strings(arr)
  arr.delete_if do |elmt|
    !(elmt.kind_of?(String))
  end
end

def count_elements(arr)
  arr.each do |x|
    x[:count] = 0
    name = x[:name]
    arr.each do |hash|
      if hash[:name] == name
        x[:count] += 1
      end
    end
  end.uniq
end

def merge_data(k, v)
  container = []
  k.each do |ppl_name|
    name = ppl_name[:first_name]
    v.each do |data|
      if data[name]
        merged_person = data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(arr)
  cool_box = []

  arr.each do |elmt|
    cool_box << elmt if elmt[:temperature] == "cool"
  end
  cool_box
end

def organize_schools(schools)
  tidy = {}
  schools.each do |name, locations|
    location = locations[:location]
    if tidy[location]
      tidy[location] << name
    else
      tidy[location] = []
      tidy[location] << name
    end
  end
  tidy
end
