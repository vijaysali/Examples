require 'pp'
x = 1.upto(100).to_a
#get_last_elem(x)
#Get the last element in an array
def get_last_item(a, i = 0)
  return nil if a.empty?
  return a[i-1] if a[i].nil?
  get_last_item(a, i+1)
end
#puts get_last_item(x)

#Find last but 2 elements
def get_last_two_elements(a, i = 0)
  return nil if a.empty?
  return a[i-1],a[i-2] if a[i].nil?
  get_last_two_elements(a , i+1)
end
#p get_last_two_elements(x)

#Find k'th element in a list
def get_kth_element(a, element)
  return a[element-1]
end
#p get_kth_element(x, 2)

#Find the numbe of elements in the list
def get_number_of_list(a, i = 0)
  return nil if a.empty?
  return i if a[i].nil?
  get_number_of_list(a, i+1)
end
y = [1, 2, 10, 14]
p get_number_of_list(y)
