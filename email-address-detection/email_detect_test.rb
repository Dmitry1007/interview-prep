gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './email_detect'

class EmailDetectTest < Minitest::Test
  def test_it_exists
    assert(EmailDetect)
  end
end
