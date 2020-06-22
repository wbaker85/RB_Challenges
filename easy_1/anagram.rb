class Anagram
  def initialize(word)
    @word = word
  end

  def match(word_list)
    letters = @word.downcase.split('').sort.join

    word_list.select do |potential_word|
      these_letters = potential_word.downcase.split('').sort.join
      letters == these_letters && @word.downcase != potential_word.downcase
    end
  end
end
