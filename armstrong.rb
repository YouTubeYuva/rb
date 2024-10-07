def armstrong(num)
    number = num.to_s
    n = number.length
    armstrong = 0
    for i in (0...n)
        armstrong += ((number[i].to_i)**n)
    end 
    armstrong = armstrong.to_s
    if number == armstrong
        return "THE NUMBER #{num} IS ARMSTRONG"
    else 
        return "THE NUMBER #{num} IS NOT ARMSTRONG"
    end 
end 
armstrong(153)

