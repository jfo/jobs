
def piter(n)
  count = 0

  until n == 0
    count += 1
    n -= 1
  end

  count
end


def p(n)
  if n == 1
    return 1
  else
    return (n/2) + p(n - 1)
  end
end

n = 1900

until n == 2100
puts "#{n}:"
puts p(n)
puts
sleep 0.08
n+=1
end
