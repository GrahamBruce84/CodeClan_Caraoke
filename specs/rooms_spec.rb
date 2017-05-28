require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../rooms')
require_relative ('../songs')
require_relative ('../guests')

class RoomsTest < MiniTest::Test

  def setup()
    @rooms = Rooms.new()

    @guests1 = Guests.new("Graham", "Bruce", 10.00)
    @guests2 = Guests.new("John", "Allan", 20.00)
    @guests3 = Guests.new("Meghan", "Wilson", 20.00)
    @guests4 = Guests.new("Will", "Smith", 50.00)

    @song1 = Songs.new("You and me","lifehouse")
    @song2 = Songs.new("Ignition", "R Kelly")
    @song3 = Songs.new("Carry on wayward son", "Kansas" )
  end

  def guests_count()
    assert_equal(0, @rooms.guest_count())
  end

  def test_add_guest()
    @rooms.add_guest(@guests1)
    @rooms.add_guest(@guests2)
    assert_equal(2, @rooms.guests_count())
  end

  def test_remove_guest()
    @rooms.add_guest(@guests1)
    @rooms.add_guest(@guests2)
    @rooms.guest_check_out()
    assert_equal(1, @rooms.guests_count())
  end 

  def test_add_song()
    @rooms.add_song(@song1)
    assert_equal(1, @rooms.songs_count())
  end

  def test_too_many_guests()
    @rooms.add_guest(@guests1)
    @rooms.add_guest(@guests2)
    @rooms.add_guest(@guests3)
    @rooms.add_guest(@guests4)
    @rooms.too_many_guests()
    assert_equal(3, @rooms.guests_count())
  end

end










