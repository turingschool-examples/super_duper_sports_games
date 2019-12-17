require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'
require './lib/user'

class UserTest < Minitest::Test

  def test_it_exists
    user = User.new("Billy")

    assert_instance_of User, user
  end

  def test_it_has_attributes
    user = User.new("Billy")

    assert_equal "Billy", user.name
  end

  def test_user_can_enter_year_for_games
    user = User.new("Billy")

    assert_equal 2004, user.year 
  end
end
