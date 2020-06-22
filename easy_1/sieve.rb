class Sieve
  def initialize(num)
    @range = (2..num)
  end

  def primes
    vals = @range.to_a

    vals.each do |val|
      next if val == :marked
      vals.map! do |other_val|
        if other_val == :marked || other_val == val
          other_val
        else
          other_val % val == 0 ? :marked : other_val
        end      
      end
    end

    vals.select { |val| val != :marked }
  end
end