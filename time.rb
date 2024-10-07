def data(time)
    arr = time.split(/[hms]/).map(&:to_i)
      if time.include? "h"
        return((arr[0]*60+arr[1])*60)+arr[2]
      end
      else time.include? "hm"
        return((arr[0]*60+arr[1])*60))
      end  
      if time.include? "m"
        return ((arr[0]*60+arr[1])*60)
      end         
      if time.include? "s"
        return arr[0]
      end
    return
    end
  puts data("1h15m27s")