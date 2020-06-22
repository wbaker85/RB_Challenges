class PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 1

    factors = (1..num / 2).select { |n| num % n == 0 }
    sum = factors.inject(&:+)

    case
      when sum == num then 'perfect'
      when sum < num then 'deficient'
      when sum > num then 'abundant'
    end
  end
end
