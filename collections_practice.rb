require 'pry'

def begins_with_r(arr)
    arr.all? {|word| word[0].downcase == "r"}
end

def contain_a(arr)
    arr.select {|word| word.include?("a")}
end

def first_wa(arr)
    arr.find {|word| word[0..1].downcase == "wa"}
    
end

def remove_non_strings(arr)
    non_string = []
    arr.each {|thing| non_string << thing if thing.class == String}
    non_string

end

def count_elements(array)
    arr = []
    count = Hash.new(0)
    array.each do |word|
        count[word] += 1
        end
    count.each do |name, number|
        name[:count] = number
        arr << name
    end
arr
end


def merge_data(keys, data)
    final = []
    data.each do |hask|
        hask.each do |name, info|
            keys.each do |people|
                people.each do |stats, specifics|
                   if name == specifics
                   final  << info.merge(people)
                   end
                end
            end
        end
    end
    return final
end

def find_cool(hash)
    hash.select {|info| info.has_value?("cool")}
end

def organize_schools(schools)
    city_arr = []
    final_hash = {}
    schools.each do |school, info|
        info.each do |loca, city|
            city_arr << city
        end
    end

    city_arr.uniq!
    
    city_arr.each do |cities|
        final_hash[cities] = []
        schools.each do |school, info|
            if  info.has_value?(cities)
                final_hash[cities] << school
            end
        end
    end
    final_hash
end
