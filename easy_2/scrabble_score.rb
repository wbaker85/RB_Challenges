class Scrabble
  LETTER_VALS = {
    %w(A E I O U L N R S T) =>  1,
    %w(D G) =>  2,
    %w(B C M P) =>  3,
    %w(F H V W Y) =>  4,
    %w(K) =>  5,
    %w(J X) =>  8,
    %w(Q Z) => 10
  }

  def initialize(word)
    @word = word
  end

  def score
    return 0 if !@word || @word.include?(' ') || @word == ''

    @word.downcase.chars.map do |char|
      LETTER_VALS.select { |k, _| k.include?(char.upcase) }.values[0]
    end.inject(&:+)
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
