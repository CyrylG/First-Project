class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @result = []
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split.count
  end

  def reading_time(wpm)
    @time = count_words * 60 / wpm.to_f

    # wpm is an integer representing the number of words the
    # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes)
    time_mins = reading_time(wpm).to_f / 60.to_f
    if time_mins.to_f <= minutes.to_f
      return @contents
    else
      number_of_words = minutes.to_f * wpm.to_f
      @result << @contents.split(" ")[0...number_of_words.to_i]
      @contents = @contents.split(" ")
      @contents.delete_at(0)
      @contents.delete_at(0)
      @contents = @contents.join(" ")
      return @result.join(" ")
    end

    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
