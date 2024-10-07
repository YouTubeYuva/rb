def diagonalDifference(arr)
    primary_diagonal_sum= 0
    secondary_diagonal_sum=0
  n=arr.length
  for i in 0...n
    primary_diagonal_sum += arr[i][i]
    secondary_diagonal_sum += arr[i][n-i-1]
  end 

  (primary_diagonal_sum-secondary_diagonal_sum).abs
end