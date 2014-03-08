def sum(x)
  if x.length == 1
    return x[0]
  else
    x[0] = x[1] + x.shift
    sum(x)
  end
end


print sum((0..1060).to_a)


def loopsum(x)

  loop do
    if x.length == 1
      return x[0]
    else
      x[0] = x[1] + x.shift
    end
  end

end

puts loopsum((0..14060).to_a)
