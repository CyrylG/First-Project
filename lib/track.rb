class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
    # title and artist are both strings
  end

  def title
    @title
    # Returns the title as a string
  end

  def artist
    @artist
  end

  def format
    "#{@title} by #{@artist}"
    # Returns a string of the form "TITLE by ARTIST"
  end
end
