def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a < b
      1
    else a > b
      -1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    else a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  second = array[1]
  third = array[2]
  array[1] = third
  array[2] = second
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = array.collect do |element|
    name = element.chars
    name[2] = "$"
    element = name.join
  end
end

def find_a(array)
  begins_with_a = array.select do |element|
    element.start_with?("a")
  end
end

def sum_array(array)
  array.inject do |sum, element|
    sum += element
  end
end

def add_s(array)
  array_with_s = []
  array.each_with_index do |element, index|
    if index != 1
      array_with_s[index] = element << "s"
    else
      array_with_s[index] = element
    end
    array_with_s
  end

end
