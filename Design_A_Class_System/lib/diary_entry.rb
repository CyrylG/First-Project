class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    #title and contents are strings
  end

  def title
    @title
    #returns title as string
  end

  def contents
    @contents
    #returns contents as string
  end

  def count_words
    @contents.split.count
    #returns word count as integer
  end

  def reading_time(wpm)
    (count_words / wpm.to_f).ceil
    #returns reading time as integer
  end
end
