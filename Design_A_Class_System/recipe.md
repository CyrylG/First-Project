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
  initialize
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
  initialize(title, contents)

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
  initialize
  end

  def add(todo)

  #todo is instance of Todo
  end

  def list

  #returns list of todos
  end
end

class Todo
  initialize(todo)

  #todo is a string
  end

  def todo

  #returns todo as string
  end
end

class Contacts
  initialize(diary)
  
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

# EXAMPLE

# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.