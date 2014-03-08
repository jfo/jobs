origin = [0,0]
final = [10,10]

def step(coord):
  x = coord[0]
  y = coord[1]
  [[x,y+1],[x+1,y]]

def count_paths(origin, final):
  next_step = step(origin)

  next_step.reject! do |e|
    e[0] > final[0] || e[1] > final[1]
  end

  if next_step.empty?
    1
  elsif next_step.length == 1
    count_paths(next_step[0], final)
  elsif next_step.length == 2
    count_paths(next_step[1], final) + count_paths(next_step[0], final)
  end
end

p count_paths(origin, final)
