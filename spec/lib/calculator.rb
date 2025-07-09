class Calculator
  def add(input)
    return 0 if input.strip.empty?
    input = input.gsub("\n", ",")
    input.split(',').map(&:to_i).sum
  end
end
