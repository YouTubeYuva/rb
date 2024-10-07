def binary_search(arr, target)
  arr.sort!
  left = 0
  right = arr.length - 1
  while left <= right
    mid = (left + right) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  
  return -1
end

 binary_search([2, 48, 23, 12, 50, 100, 78, 73],50)
