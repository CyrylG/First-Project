{{PROBLEM}} Class Design Recipe
1. As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class TodoTracker
def initialize

end

def add_todo(text)
Text is a string representing a todo task which returns nothing
end

def list
return a list of todos/task
end

def complete(text)
Text is a string representing which todo task is complete and  returns nothing
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.
end

# EXAMPLE

# 1
todo_tracker = TodoTracker.new
todo_tracker.add_todo("add1")
todo_tracker.list # => "add1"

# 2
todo_tracker = TodoTracker.new
todo_tracker.add_todo("add1")
todo_tracker.add_todo("add2")
todo_tracker.list # => "add1, add2"

# 3
todo_tracker = TodoTracker.new
todo_tracker.list # => ""

# 4
todo_tracker = TodoTracker.new
todo_tracker.add_todo("add2")
todo_tracker.check_if_complete("add2)
todo_tracker.list # => ""

# 5
todo_tracker = TodoTracker.new
todo_tracker.add_todo("add1")
todo_tracker.add_todo("add2")
todo_tracker.check_if_complete("add1")
todo_tracker.list # => "add2"

# 6
todo_tracker = TodoTracker.new
todo_tracker.add_todo("add1")
todo_tracker.add_todo("add2")
todo_tracker.check_if_complete("add3")
todo_tracker.list # => "Task doesn't exist"


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.