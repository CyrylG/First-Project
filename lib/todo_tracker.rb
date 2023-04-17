class TodoTracker
  def initialize
    @list = []
  end

  def add_todo(task)
    @list << task
  end

  def list
    @list.join(", ")
  end

  def complete(task)
    fail "No such task" unless @list.include? task
    @list.delete(task)
  end
end
