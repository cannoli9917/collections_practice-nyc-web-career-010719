require "pry"

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort{|x,y| y <=> x}
end

def sort_array_char_count(array)
  array.sort{|x,y| x.length <=> y.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |word|
    word[2] = "$"
  end
end

def find_a(array)
  array.select do |word|
    word.start_with?("a")
  end
end


def sum_array(array)
  array.inject {|x,y| x + y}
end



# def add_s(array)
#   array.map do |word|
#     if word != array[1]
#       word += "s"
#     else
#       word
#     end
#   end
# end


def add_s(array)
  array.each_with_index.map {|element, index| index == 1? element : element + "s"}
end
