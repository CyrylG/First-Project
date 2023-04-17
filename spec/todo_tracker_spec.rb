require "todo_tracker"

RSpec.describe "TodoTracker" do
  context "given one task" do
    it "return task" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      expect(todo_tracker.list).to eq "add1"
    end
  end

  context "given two tasks" do
    it "return two tasks" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      todo_tracker.add_todo("add2")
      expect(todo_tracker.list).to eq "add1, add2"
    end
  end

  context "given no tasks" do
    it "return empty" do
      todo_tracker = TodoTracker.new
      expect(todo_tracker.list).to eq ""
    end
  end

  context "given one task and completing that task" do
    it "return empty" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      todo_tracker.complete("add1")
      expect(todo_tracker.list).to eq ""
    end
  end

  context "given two tasks and completing one task" do
    it "return empty" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      todo_tracker.add_todo("add2")
      todo_tracker.complete("add1")
      expect(todo_tracker.list).to eq "add2"
    end
  end

  context "attempting to complete a task that is not on the list" do
    it "fails" do
      todo_tracker = TodoTracker.new
      todo_tracker.add_todo("add1")
      todo_tracker.add_todo("add2")
      expect { todo_tracker.complete("add3") }.to raise_error "No such task"
    end
  end
end
