require "todo"
require "todo_list"

RSpec.describe "integration" do
  context "after adding a task" do
    it "returns incomplete task" do
      todo_list = TodoList.new
      todo1 = Todo.new("task1")
      todo_list.add(todo1)
      expect(todo_list.incomplete).to eq [todo1]
    end
  end

  context "after adding a task and marking it as done" do
    it "returns complete task" do
      todo_list = TodoList.new
      todo1 = Todo.new("task1")
      todo_list.add(todo1)
      todo1.mark_done!
      expect(todo_list.complete).to eq [todo1]
    end
  end

  context "after adding multiple tasks and marking one as done" do
    it "returns remaining incomplete tasks" do
      todo_list = TodoList.new
      todo1 = Todo.new("task1")
      todo2 = Todo.new("task2")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo1.mark_done!
      expect(todo_list.incomplete).to eq [todo2]
    end
  end

  context "marks all tasks as complete" do
    it "returns all tasks as completed" do
      todo_list = TodoList.new
      todo1 = Todo.new("task1")
      todo2 = Todo.new("task2")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo1, todo2]
    end
  end
end
