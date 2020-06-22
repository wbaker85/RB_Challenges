class Octal
  def initialize(int_as_string)
    @digits = int_as_string.split('')
  end

  def to_decimal
    return 0 if @digits.any? { |digit| digit =~ /[^0-7]/ }

    @digits
      .map(&:to_i)
      .reverse
      .map.with_index { |num, idx| num * 8.pow(idx) }
      .inject(&:+)
  end
end
