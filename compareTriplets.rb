def compareTriplets(a, b)
    alice_points = 0
    bob_points = 0
    
    (0..2).each do|i|  
     if a[i] > b[i]
      alice_points += 1
     elsif a[i] < b[i]
      bob_points += 1
     end 
    end
 [alice_points,bob_points]
end