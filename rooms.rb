class Rooms

  def initialize()
    @guests = []
    @songs = []
  end

  def guests_count()
    @guests.count
  end

  def add_guest(guest)
    @guests << guest
  end

  def guest_check_out()
    @guests.pop()
  end

  def songs_count()
    @songs.count()
  end

  def add_song(song)
    @songs << song
  end

  def too_many_guests()
    if @guests >= 3
      return @guests.slice(4..50)
    end
  end


end