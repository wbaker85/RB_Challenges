module ToRoman
  ROM_VALS = {
    I: 1,
    IV: 4,
    V: 5,
    IX: 9,
    X: 10,
    XL: 40,
    L: 50,
    XC: 90,
    C: 100,
    CD: 400,
    D: 500,
    CM: 900,
    M: 1000
  }

  def to_roman
    val = self

    chars = []

    loop do
      max_val = ROM_VALS.values.select { |v| v <= val }.max
      chars.push(ROM_VALS.key(max_val))
      val -= max_val
      break if val == 0
    end

    chars.map(&:to_s).join
  end
end

Integer.include ToRoman
