class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers = numbers.split(Regexp.escape(delimiter))
    else
      numbers = numbers.gsub("\n", ",").split(",")
    end

    numbers = numbers.map(&:to_i)
    negatives = numbers.select(&:negative?)
  
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  
    numbers.sum
  end
end
