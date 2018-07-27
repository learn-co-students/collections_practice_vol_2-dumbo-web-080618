# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}

end

def contain_a(array)
  array.find_all {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|x| x[0] == 'w' && x[1] == 'a'}
end

def remove_non_strings(array)
  array.select {|x| x.class == String}
end

def count_elements(array)
  new_array = []
    array.each do |index|
        index[:count] = array.count(index)
    end
    array.each do |index|
        if new_array.none? {|h| h[:name] == index[:name]}
            new_array.push(index)
        end
    end
    new_array
end

def merge_data(keys, data)

    name_obj = {}

    keys.collect { |name| name_obj[name.values.first] = name }

    merged_arr = []

    data.collect do |chars|
        name_obj.each do |name, traits|
            merged_arr << traits.merge(chars[name])
        end
    end
    merged_arr
end

def find_cool(cool)
    cool.select {|elem| elem[:temperature] == "cool"}
end

def organize_schools(schools)

    org_obj = {}

    locations = schools.collect {|school, area| area[:location]}
    locations.uniq!

    locations.each do |place|
        bootcamps = []

        schools.each do |school, area|
            if area[:location] == place
                bootcamps.push(school)
            end

            org_obj[place] = bootcamps
        end
    end
    org_obj

end
