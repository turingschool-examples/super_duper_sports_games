require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/interaction'

class InteractionTest < Minitest::Test 

  def test_it_exists
    interaction = Interaction.new
    assert_instance_of Interaction, interaction
  end
  
end