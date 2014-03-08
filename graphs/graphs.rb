require 'pry'
g = [[1, 2],
     [1, 4],
     [2, 1],
     [2, 3],
     [2, 5],
     [3, 2],
     [3, 11],
     [4, 1],
     [4, 5],
     [4, 7],
     [5, 2],
     [5, 4],
     [5, 6],
     [5, 8],
     [6, 5],
     [6, 9],
     [6, 10],
     [7, 4],
     [7, 13],
     [8, 5],
     [8, 14],
     [9, 6],
     [9, 12],
     [10, 6],
     [10, 11],
     [11, 3],
     [11, 10],
     [12, 9],
     [13, 7],
     [13, 14],
     [14, 8],
     [14, 13]]

# giant = File.open("/Users/jeff/code/jobs/graphs/connections.txt", "rb").readlines
# giant.collect! do |line|
#   line = line.split
# end

def grapher(array)
  hash = {}
  array.each do |pair|
    hash[pair[0]] ||= []
    hash[pair[0]] << pair[1]
  end
  hash
end

# p grapher(giant)
p grapher(g)

def accessible?(origin, destination, graph)
  if graph[origin].include?(destination)
     true
  else
    false
  end
end

# p accessible?(1, 2, g)
# binding.pry






