class OddWords
  def initialize(str)
    @input_str = str
  end

  def process
    counter = 0
    output = @input_str

    output.scan(/\b\w+\b/).each do |word|
      output.gsub!(word, word.reverse) if counter.odd?
      counter += 1
    end

    output
  end
end
