class Contacts
  def initialize(diary)
    @diary = diary
    @contacts = []
    #diary is instance of Diary
  end

  def extract_numbers
    return @diary.list.map do |entry|
             entry.contents.scan(/07[0-9]{9}/)
           end.flatten.uniq
    #extracts phone numbers from all entries and adds them to an array
  end
end
