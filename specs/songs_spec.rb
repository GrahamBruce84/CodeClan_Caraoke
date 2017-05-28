require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../songs')

class SongsTest < MiniTest::Test

  def setup()
    @song1 = Songs.new("You and me","lifehouse")
    @song2 = Songs.new("Ignition", "R Kelly")
    @song3 = Songs.new("Carry on wayward son", "Kansas" )
  end

  def test_get_title()
    assert_equal("You and me", @song1.get_title())
  end

  def test_get_artist()
    assert_equal("lifehouse", @song1.get_artist())
  end
end