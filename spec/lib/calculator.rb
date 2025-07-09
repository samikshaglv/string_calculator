class Calculator
  def add(input)
    return 0 if input.strip.empty?
    delimiter = /[,\n]/
    if input.start_with?("//")
      delimiter_str, input = input[2..].split("\n", 2)
      delimiter = Regexp.escape(delimiter_str)
    end
    numbers = input.split(/#{delimiter}/).map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end
    
    numbers.sum
  end
end
