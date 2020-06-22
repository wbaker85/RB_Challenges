class DNA
  def initialize(code)
    @code = code
  end

  def hamming_distance(other_code)
    len = [@code.size, other_code.size].min
    @code[0, len]
      .chars
      .select.with_index { |val, idx| val != other_code.chars[idx] }
      .size
  end
end