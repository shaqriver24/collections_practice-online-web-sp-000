def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort.reverse
end

def sort_array_char_count(arr)
  arr.sort { |str1, str2| str1.length <=> str2.length}
end

def swap_elements(arr) #Undestructive
  new_arr = []
  new_second = arr[2]
  new_third = arr[1]

  arr.each_with_index do |ele, idx|
    case idx
    when 1
      new_arr << new_second
    when 2
      new_arr << new_third
    else
      new_arr << ele
    end
  end
  new_arr
end

def swap_elements_from_to(arr, idx1, idx2) #Undestructive
  new_arr = []
  new_ele1 = arr[idx2]
  new_ele2 = arr[idx1]

  arr.each_with_index do |ele, idx|
    case idx
    when idx1
      new_arr << new_ele1
    when idx2
      new_arr << new_ele2
    else
      new_arr << ele
    end
  end
  new_arr
end

def reverse_array(arr)
  arr.reverse
end

def kesha_maker(arr)
  new_arr = []

  arr.each do |str|
    str[2] = "$"
    new_arr << str
  end
  new_arr
end

def find_a(arr)
  arr.select { |str| str.start_with?("a") }
end

def sum_array(arr)
  arr.inject { |sum, num| sum + num }
end

def add_s(arr)
  arr.each_with_index.map { |ele, idx| idx == 1 ? ele : "#{ele}s" }
end
