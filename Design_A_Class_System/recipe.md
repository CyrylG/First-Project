{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

As a user
So that I can [record] my experiences
I want to keep a regular [diary]

As a user
So that I can [reflect] on my experiences
I want to [read] my past [diary entries]

As a user
So that I can [reflect] on my experiences in my busy day
I want to [select] diary entries to [read] based on how much [time] I have and my [reading speed]

As a user
So that I can keep track of my [tasks]
I want to [keep] a [todo list] along with my [diary]

As a user
So that I can keep track of my [contacts]
I want to [see] a [list] of all of the mobile [phone numbers] in all my diary entries

Also design the interface of each class in more detail.

```ruby
class Diary
  def initialize
  end

  def add(entry)

  #entry is instnace of DiaryEntry
  end

  def list

  #returns a list of entries
  end

  def readable_entries(time, wpm)

  #returns list of readable entries within given time based on given wpm
  end
end

class DiaryEntry
  def initialize(title, contents)

  #title and contents are strings
  end

  def title

  #returns title as string
  end

  def contents

  #returns contents as string
  end

  def count_words

  #returns word count as integer
  end

  def reading_time(wpm)

  #returns reading time as integer
  end
end

class TodoList
  def initialize
  end

  def add(todo)

  #todo is instance of Todo
  end

  def list

  #returns list of todos
  end
end

class Todo
  def initialize(todo)

  #todo is a string
  end

  def todo

  #returns todo as string
  end
end

class Contacts
  def initialize(diary)
  
  #diary is instance of Diary
  end

  def extract_numbers

  #extracts phone numbers from all entries and adds them to an array
  end

  def list

  #returns list of phone numbers as strings
  end
end
```
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

```ruby

# 1
diary = Diary.new
diary_entry_1 = DiaryEntry("my_title_1", "my_contents_1")
diary_entry_2 = DiaryEntry("my_title_2", "my_contents_2")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
expect(diary.list).to eq [diary_entry_1, diary_entry_2]

# 2

diary = Diary.new
diary_entry_1 = DiaryEntry("my_title_1", "one two")
diary_entry_2 = DiaryEntry("my_title_2", "three")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
result = diary.readable_entries(2, 1)
expect(result).to eq [diary_entry_1, diary_entry_2]

# 3

diary = Diary.new
diary_entry_1 = DiaryEntry("my_title_1", "one two")
diary_entry_2 = DiaryEntry("my_title_2", "three")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
result = diary.readable_entries(1, 1)
expect(result).to eq [diary_entry_2]

# 4

diary = Diary.new
diary_entry_1 = DiaryEntry("my_title_1", "one two")
diary_entry_2 = DiaryEntry("my_title_2", "three")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
expect { diary.readable_entries(1, 0) }.to raise_error "message"

# 5

diary = Diary.new
diary_entry_1 = DiaryEntry("my_title_1", "one two")
diary_entry_2 = DiaryEntry("my_title_2", "three")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
expect { diary.readable_entries(0, 1) }.to raise_error "message"

# 6 

todo_list = TodoList.new
todo_1 = Todo.new("todo_1")
todo_list.add(todo_1)
todo_2 = Todo.new("todo_2")
todo_list.add(todo_2)
expect(todo_list.list).to eq [todo_1, todo_2]

# 7

diary = Diary.new
contacts = Contacts.new
diary_entry_1 = DiaryEntry.new("my_tittl", "one two 07000000000")
contacts.extract_numbers
expect(contacts.list).to eq ["07000000000"]

```

4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

```ruby

# 1 
diary = Diary.new
expect(diary.list).to eq []

# 2
diary_entry_1 = DiaryEntry("my_title_1", "one two")
expect(diary_entry_1.count_words).to eq 2

# 3
diary_entry_1 = DiaryEntry("my_title_1", "one two")
diary_entry_1.count_words
expect(diary_entry_1.reading_time(1)).to eq 2

# 4 
todo_list = TodoList.new
expect(todo_list.list).to eq []

# 5 
todo_1 = Todo.new("todo_1")
expect(todo_1.todo).to eq "todo_1

```

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.