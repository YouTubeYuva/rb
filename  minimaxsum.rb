def minimaxsum(arr)
 
    min_sum = arr[0..3].sum
     max_sum = arr[1..4].sum
      "#{min_sum} #{max_sum}"
   end
 
 puts minimaxsum[(1,2,3,4,5)]