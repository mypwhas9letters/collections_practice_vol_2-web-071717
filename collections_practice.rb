require 'pry'
# your code goes here
def begins_with_r (arr)
  arr.all? {|x| x.start_with?("r")}
end

def contain_a (arr)
  arr.select {|x| x.include?('a')}
end

def first_wa (arr)
  arr.find do |x|
    x[0..1] == "wa"
  end
end

def remove_non_strings (arr)
  arr.select {|x| x.class == String}
end

def count_elements (arr)
  counter = 0
  array = []
  arr.uniq.map do |x|
    counter = arr.count x
    x[:count] = counter
array.push(x)
  end
  array
end

def merge_data (arr1, arr2)
  ans = []
  arr1.map do |x|
    arr2.map do |y|
      y.map do |z|
      if x[:first_name] == z[0]
        ans << x.merge(z[1])
end
end
end
end
ans
end

def find_cool (arr)
  coolarr = []
  arr.map do |x|
    if x[:temperature] == "cool"
      coolarr << x
    end
  end
  coolarr
end

def organize_schools (arr)
  schoolbyloc = {}
  arr.each do |x|
    schoolbyloc[x[1][:location]] = []
  end

  arr.each do |x|
    schoolbyloc.each do |y,z|
      if x[1][:location] == y
        z.push(x[0])
end
end
end
schoolbyloc
end
