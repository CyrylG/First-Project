require "diary_entry"

RSpec.describe DiaryEntry do
  it "return title" do
    diary_entry = DiaryEntry.new("hello", " ")
    result = diary_entry.title
    expect(result).to eq "hello"
  end
end
