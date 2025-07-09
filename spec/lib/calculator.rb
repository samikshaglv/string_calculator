class Calculator
  def add(input)
    return 0 if input.strip.empty?
    delimiter = /[,\n]/
    if input.start_with?("//")
      delimiter_str, input = input[2..].split("\n", 2)
      delimiter = Regexp.escape(delimiter_str)
    end
    numbers = input.split(/#{delimiter}/).map(&:to_i)
    numbers.sum
  end
end
