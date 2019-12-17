require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'
require './lib/user'

class UserTest < Minitest::Test

  def test_it_exists
    user = User.new

    assert_instance_of User, user 
  end
end
