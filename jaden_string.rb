# class that jaden smiths a string, fun fun fun
class JadenString
  def jaden_smith(str)
    puts str
    string = ''
    str.split(' ').each { |elm| check_data(elm, string) }
    puts string
  end

  private

  def check_data(elm, string)
    array = elm.split('')
    first = array.first.upcase
    move_positions(array, first, string)
  end

  def move_positions(array, first, string)
    array.delete_at(0)
    array.insert(0, first)
    string << array.join('') + ' '
  end
end

test = JadenString.new
test.jaden_smith("How can mirrors be real if our eyes aren't real")
