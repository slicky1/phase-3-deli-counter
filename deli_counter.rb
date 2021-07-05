# Write your code here.
q=[]

def take_a_number(q, name)
  num = q.size + 1
  puts "Welcome, #{name}. You are number #{num} in line."
  return q.push(name)
end

def line(q)
  str = "The line is currently empty."
  if q.size == 0 
    puts str
    return str
  end
  str = "The line is currently:"
  i = 1
  q.size.times do
    str = "#{str} #{i}. #{q[i-1]}"
    i += 1
  end
  puts str
  return str
end

def now_serving(q)
  str = "There is nobody waiting to be served!"
  if q.size == 0 
    puts str
    return str
  end
  puts "Currently serving #{q.shift}."
  return q
end