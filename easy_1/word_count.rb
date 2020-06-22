class Phrase
  def initialize(str)
    @str = str.downcase
  end

  def word_count
    str = @str.gsub('\n', ' ')
    str = str.gsub(/ '(.+)' /, ' \1 ')
    str.scan(/[a-z0-9']+/).tally
  end
end
