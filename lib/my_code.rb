# Your Code Here

def map(s)
  retVal = []
  i = 0
  while i < s.length
    retVal.push(yield(s[i]))
    i += 1
  end
  return retVal
end

def reduce(s, sp=nil)
  if sp
    retVal = sp
    i = 0
  else
    retVal = s[0]
    i = 1
  end
  while i < s.length
    retVal = yield(retVal, s[i])
    i += 1
  end
  retVal
end