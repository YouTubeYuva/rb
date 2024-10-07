# 1.bubble_sort
def bubble_sort(array)
  n =array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i],array[i+1] = array[i+1],array[i]
      swapped = true
    end
  end 
  break if not swapped
end
array
end
bubble_sort([50,2,45,36,13,80])

# 2.recursive method
def binary_search_recursive(arr, target, left , right )
  arr.sort!
  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      return binary_search_recursive(arr, target, mid + 1, right)
    else
      return binary_search_recursive(arr, target, left , mid - 1)
    end
  end
  return 
end
arr = [2, 48, 23, 12, 50, 100, 78, 73]
target = 50
result = binary_search_recursive(arr, target, 0, arr.length - 1 )

# 3.find the pairs two digits
def find_pairs(array, target)
  new_arr = []
   for i in 0...array.length
     for j in i+1...array.length
      if array[i] + array[j] == target
        new_arr << [array[i], array[j]]
      end
    end
  end
  return new_arr
end
find_pairs([2,7,4,0,9,5,1,3], 7)

# 4.find the pairs three digits
def find_pairs(array, target)
  new_arr = []
    for i in 0...array.length
      for j in i+1...array.length
        for k in j+1...array.length
          if array[i] + array[j] + array[k] == target
            new_arr << [array[i], array[j] , array[k]]
          end
        end
      end
    end  
  return new_arr
end
find_pairs([-1, 0, 1, 2, -1, -4],0)

#5. palindrome_to_substring
def palindrome_to_substring(string)
  new_string = ""
  max_length = 0
  length = string.length
    for i in 0...length
      for j in i+1..length
      substring = string[i...j]
      if substring == substring.reverse
        len =substring.length
        if len > max_length
          max_length = substring.length
          new_string = substring + " "
        elsif substring.length == max_length
          new_string += substring + " "
        end
      end
    end
  end
  return new_string
end
palindrome_to_substring("forgeeksskeegfor")


# 6.longest_common_subsequence
def longest_common_subsequence(str1, str2)
  common_letters = (str1.chars & str2.chars).join# find common elements 
  end
longest_common_subsequence("AGGTAB","GXTXAYB")

# 7.string_permutations
def string_permutations(strs) 
output =[]
str = strs.chars
  length = str.length
  for i in 0...length
    for j in 0...length
      next if j == i
        for k in 0...length
          next if k == i || k == j
          output << "#{str[i]}#{str[j]}#{str[k]}"
        end
    end
  end 
  output
end
string_permutations("abc") 

# 8.subarray_sum
def subarray_sum(arr)
  sum = arr[0]
  current_sum = arr[0]
  length = arr.length
    for i in 1...length
      sum = [arr[i],sum + arr[i]].max
      current_sum= [sum,current_sum].max
    end
    current_sum
  end 
subarray_sum([-2, 1, -3, 4, -1, 2, 1, -5, 4])

# 9. Write a method to find the majority element in an array
def repeated_number(arr)
  counts = Hash.new(0)
  arr.each do |num|
    counts[num] += 1
  end
  max_count =counts.values.max
  repeated = counts.key(max_count)
end
repeated_number([2, 2, 1, 1, 1, 2, 2])

# 10.intersection 
def intersection(arr1, arr2)
  output = []
  for i in arr1
    for j in arr2
      if i == j
        output << i
      end
    end
  end
  return output
end
intersection([1, 2, 3, 4, 5],[4, 5, 6, 7, 8])

