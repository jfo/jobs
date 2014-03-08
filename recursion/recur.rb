def fib(n, x = 0, y = 1, acc = [])
  if n == 0
    return acc
  else
    acc << x
    fib(n - 1, y, x+y, acc)
  end
end

puts fib(400)

def sum(list)

  return list[0] if list.length == 1

  list[0] = list[1] + list.shift
  sum(list)
end

x = [1,2,3,4,5]
# puts sum(x)


def last_index_of(e, list, i = -1)

  list.flatten!

  if e == list[-1]
    return list.length - 1
  elsif list.empty?
    return i
  else
    list.pop
    last_index_of(e, list, i)
  end

end

# p last_index_of(5, [1, 2, 4, 6, 5, 2, 7])
# p last_index_of(5, [1, [2, [4, [6, [5, [2, [7, nil]]]]]]])

