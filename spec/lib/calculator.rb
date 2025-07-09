class Calculator
  def add(input)
    return 0 if input.strip.empty?
 
    numbers = input.split(/[\n,]/).map(&:to_i)
    numbers.sum
  end
end
