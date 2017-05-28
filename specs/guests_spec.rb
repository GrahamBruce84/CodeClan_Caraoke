require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../guests')

class GuestsTest < MiniTest::Test

  def setup()
    @guests1 = Guests.new("Graham", "Bruce", 10.00)
    @guests2 = Guests.new("John", "Allan", 20.00)
  end

  def test_get_first_name()
    assert_equal("Graham", @guests1.get_first_name())
  end

  def test_get_last_name()
    assert_equal("Allan", @guests2.get_last_name())
  end

  def test_get_full_name()
    assert_equal("Graham Bruce", @guests1.get_full_name())
  end

  def test_get_money()
    assert_equal(10.00, @guests1.get_money())
  end

end