# case statement that prints names from array
def likes(names)
  case names.size
  when 0
    'no one likes this'
  when 1
    "#{names.first} likes this"
  when 2
    "#{names.first} and #{names.last} likes this"
  when 3
    "#{names.first}, #{names[1]} and #{names.last} likes this"
  else
    "#{names[0]}, #{names[1]} and #{names.count - 2} others likes this"
  end
end
