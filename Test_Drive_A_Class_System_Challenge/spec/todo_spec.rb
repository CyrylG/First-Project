require "todo"

RSpec.describe "Todo" do
  describe "#task" do
    it "returns task" do
      todo1 = Todo.new("task1")
      expect(todo1.task).to eq "task1"
    end
  end

  describe "#done?" do
    context "given one incomplete task" do
      it "returns false" do
        todo1 = Todo.new("task1")
        expect(todo1.done?).to eq false
      end
    end

    context "given one complete task" do
      it "returns true" do
        todo1 = Todo.new("task1")
        todo1.mark_done!
        expect(todo1.done?).to eq true
      end
    end
  end
end
