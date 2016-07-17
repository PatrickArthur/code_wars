def revrot(str, sz)
  return '' if sz <= 0 || str == ''
  string = ''
  str.split('').map(&:to_i).each_slice(sz) do |i|
    next if i.length != sz
    string << if i.inject(0) { |sum, x| sum + x }.even?
                i.join('').reverse
              else
                i.rotate(1).join('')
              end
  end
  string
end
