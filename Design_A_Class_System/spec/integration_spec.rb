require "contacts"
require "todo"
require "todo_list"
require "diary_entry"
require "diary"

RSpec.describe "integration" do
  context "when multiple readable entries are given" do
    it "returns list of entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
      diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.list).to eq [diary_entry_1, diary_entry_2]
    end

    it "returns list of readable entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title_1", "one two")
      diary_entry_2 = DiaryEntry.new("my_title_2", "three")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      result = diary.readable_entries(2, 1)
      expect(result).to eq [diary_entry_1, diary_entry_2]
    end
  end

  context "when one readable entry is given" do
    it "returns readable entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title_1", "one two")
      diary_entry_2 = DiaryEntry.new("my_title_2", "three")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      result = diary.readable_entries(1, 1)
      expect(result).to eq [diary_entry_2]
    end
  end

  context "when wpm is 0" do
    it "fails" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title_1", "one two")
      diary_entry_2 = DiaryEntry.new("my_title_2", "three")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect { diary.readable_entries(1, 0) }.to raise_error "time and wpm must not be 0"
    end
  end

  context "when minutes is 0" do
    it "fails" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title_1", "one two")
      diary_entry_2 = DiaryEntry.new("my_title_2", "three")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect { diary.readable_entries(0, 1) }.to raise_error "time and wpm must not be 0"
    end
  end

  context "given multiple todos" do
    it "returns list of todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("todo_1")
      todo_list.add(todo_1)
      todo_2 = Todo.new("todo_2")
      todo_list.add(todo_2)
      expect(todo_list.list).to eq [todo_1, todo_2]
    end
  end

  context "given an entry with a phone number" do
    it "return list of extracted phone numbers" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title", "one two 07000000000")
      diary_entry_2 = DiaryEntry.new("my_title_2", "three")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      contacts = Contacts.new(diary)
      expect(contacts.extract_numbers).to eq ["07000000000"]
    end
  end

  context "given multiple entries with multiple phone numbers, some repeating" do
    it "return list of extracted unique phone numbers" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title", "one two 07000000000")
      diary_entry_2 = DiaryEntry.new("my_title_2", "three 07100000000 07000000000")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      contacts = Contacts.new(diary)
      expect(contacts.extract_numbers).to eq ["07000000000", "07100000000"]
    end
  end
end
