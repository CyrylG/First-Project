require "diary_entry"

RSpec.describe DiaryEntry do
  it "return title" do
    diary_entry = DiaryEntry.new("hello", " ")
    result = diary_entry.title
    expect(result).to eq "hello"
  end

  it "return contents" do
    diary_entry = DiaryEntry.new("", "one two")
    result = diary_entry.contents
    expect(result).to eq "one two"
  end

  it "return number of words in content" do
    diary_entry = DiaryEntry.new("", "one two")
    expect(diary_entry.count_words).to eq 2
  end
end
