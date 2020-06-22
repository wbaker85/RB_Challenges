require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '1'

class ProblemTest < Minitest::Test
  def test_kansas
    str = 'whats the matter with kansas.'
    assert_equal('whats eht matter htiw kansas.', OddWords.new(str).process)
  end
end