class Music
  def initialize
    @list = []
  end

  def add(song)
    fail "Song already listened to" while @list.include? song
    @list << song
  end

  def list
    @list.join(", ")
  end
end
