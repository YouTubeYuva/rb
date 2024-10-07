def plus_minus(arr)
    plus =[]
    minus =[]
    zero =[]
    for i in arr
      if i > 0
        plus << i
      elsif i < 0
        minus << i 
      else 
        zero << i
      end 
    end 
      length = arr.length.to_f
      pluslength=plus.length
      minuslength=minus.length 
      zerolength=zero.length 
    a=pluslength.to_f / length
    b=minuslength.to_f / length 
    c=zerolength.to_f / length
    [a,b,c]
  end 
  puts plus_minus([1,1,0,-1,-1])