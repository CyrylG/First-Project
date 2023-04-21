class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
    #entry is instnace of DiaryEntry
  end

  def list
    @entries
    #returns a list of entries
  end

  def readable_entries(time, wpm)
    fail "time and wpm must not be 0" if wpm < 1 || time < 1
    @entries.select do |entry|
      entry.reading_time(wpm) <= time
    end
    #returns list of readable entries within given time based on given wpm
  end
end
