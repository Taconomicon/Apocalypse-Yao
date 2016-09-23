def function(groupSize, list)
  initialList = list[0, groupSize-1]
  myTotal = getTotal(list)
  maxTotal = myTotal

  helperList = list[groupSize, list.length-1]
  i = 0

  helperList.foreach { |elt|

    myTotal = myTotal - list[i] + elt

    if myTotal > maxTotal
      maxTotal = myTotal
    end

    i = i + 1
  }

  return maxTotal
end


def getTotal(list)
  ret = 0;
  list.foreach{ |elt|
    ret += elt
  }
end

print(function(3,[1,3,4,5,6,8,9,10,-14,37]))
