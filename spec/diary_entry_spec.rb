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

  it "return estimated reading time" do
    diary_entry = DiaryEntry.new("", "one two")
    expect(diary_entry.reading_time(200)).to eq 0.01
  end

  it "return estimated reading time" do
    diary_entry = DiaryEntry.new("", "one two")
    expect(diary_entry.reading_time(400)).to eq 0.005
  end

  it "return whole content" do
    diary_entry = DiaryEntry.new("", "one two")
    expect(diary_entry.reading_chunk(200, 1)).to eq "one two"
  end

  it "return first chunk" do
    diary_entry = DiaryEntry.new("", "one two three four five six")
    expect(diary_entry.reading_chunk(200, 0.01)).to eq "one two"
  end

  it "return first two chunks" do
    diary_entry = DiaryEntry.new("", "one two three four five six")
    diary_entry.reading_chunk(200, 0.01)
    expect(diary_entry.reading_chunk(200, 0.01)).to eq "one two three four"
  end

  it "return first three chunks" do
    diary_entry = DiaryEntry.new("", "one two three four five six")
    diary_entry.reading_chunk(200, 0.01)
    diary_entry.reading_chunk(200, 0.01)
    expect(diary_entry.reading_chunk(200, 0.01)).to eq "one two three four five six"
  end

  it "return contents and first chunk" do
    diary_entry = DiaryEntry.new("", "one two three four five six")
    diary_entry.reading_chunk(200, 0.01)
    diary_entry.reading_chunk(200, 0.01)
    diary_entry.reading_chunk(200, 0.01)
    expect(diary_entry.reading_chunk(200, 0.01)).to eq "one two three four five six one two"
  end

  it "return contents twice" do
    diary_entry = DiaryEntry.new("", "one two three four")
    diary_entry.reading_chunk(400, 0.005)
    diary_entry.reading_chunk(400, 0.005)
    diary_entry.reading_chunk(400, 0.005)
    expect(diary_entry.reading_chunk(400, 0.005)).to eq "one two three four one two three four"
  end

  it "return contents" do
    diary_entry = DiaryEntry.new("", "one two three four five six")
    diary_entry.reading_chunk(400, 0.01)
    expect(diary_entry.reading_chunk(400, 0.01)).to eq "one two three four five six"
  end

  it "return contents and first chunk" do
    diary_entry = DiaryEntry.new("", "one two three four five six")
    diary_entry.reading_chunk(400, 0.01)
    diary_entry.reading_chunk(400, 0.01)
    expect(diary_entry.reading_chunk(400, 0.01)).to eq "one two three four five six one two three four"
  end

  it "return title and return contents" do
    diary_entry = DiaryEntry.new("Hello", "one two three four five six")
    expect(diary_entry.title).to eq "Hello"
    diary_entry.reading_chunk(400, 0.01)
    expect(diary_entry.reading_chunk(400, 0.01)).to eq "one two three four five six"
  end
end
