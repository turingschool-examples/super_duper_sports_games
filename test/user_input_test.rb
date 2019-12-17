require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'
require './lib/user_input'
require './lib/standard_dev'
require 'pry'

class UserInputTest < Minitest::Test

  def setup
    @new_user_input = UserInput.new
    @curling = Event.new("Curling", [24, 30, 18, 20, 41])
    @ring_toss = Event.new("Ring Toss", [23, 22, 29, 18, 30])
    @games = Games.new(2017)
  end

  def test_it_exists
    assert_instance_of UserInput, @new_user_input
  end









end
