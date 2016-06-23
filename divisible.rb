# class that prints all numbers divisble by n, if its prime it returns message
class Divisible
  def print_all_divisible(n)
    false if n <= 1
    divisable_by(n)
  end

  private

  def divisable_by(n)
    arr = []
    (2..n - 1).each { |i| (n % i == 0) ? arr << i : nil }
    check_prime(n, arr)
  end

  def check_prime(n, arr)
    prime = (2..n / 2).none? { |i| n % i == 0 } ? true : false
    if arr.empty? && prime
      puts "#{n} is a prime number"
    else
      puts arr.to_s
    end
  end
end

test = Divisible.new
test.print_all_divisible(2)
test.print_all_divisible(12)
test.print_all_divisible(25)
test.print_all_divisible(13)
