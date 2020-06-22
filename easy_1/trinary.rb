class Trinary
  def initialize(str)
    @str = str
  end

  def to_decimal
    return 0 if @str =~ /[^0-2]/

    digits = @str.split('').reverse

    digits.map!.with_index do |val, idx|
      val.to_i * 3.pow(idx)
    end

    digits.inject(:+)
  end
end
