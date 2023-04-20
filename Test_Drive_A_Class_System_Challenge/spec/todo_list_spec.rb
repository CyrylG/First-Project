require "todo_list"

RSpec.describe TodoList do
  context "with no tasks added" do
    it "returns empty list" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end
  end

  context "with no tasks added" do
    it "returns empty list" do
      todo_list = TodoList.new
      expect(todo_list.complete).to eq []
    end
  end
end
