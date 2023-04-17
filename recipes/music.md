{{PROBLEM}} Class Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class Music
  def initalize
  end

  def add(song)
    song is a string, does not add existing song,
    no return
  end

  def list
    return list of songs
  end
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
music = Music.new
music.add("song1")
music.list => "song1"

# 2
music = Music.new
music.add("song1")
music.add("song2")
music.list => "song1, song2"

# 3
music = Music.new
music.list => ""

4. 
music = Music.new
music.add("song1")
music.add("song1")
music.list #fails "Song already listened to"