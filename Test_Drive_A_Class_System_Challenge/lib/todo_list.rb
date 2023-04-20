class TodoList
  def initialize
    @tasks = []
  end

  def add(todo)
    @tasks << todo
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    @tasks.select do |task|
      task.done? == false
    end
    # Returns all non-done todos
  end

  def complete
    @tasks.select do |task|
      task.done? == true
    end
    # Returns all complete todos
  end

  def give_up!
    @tasks.each do |task|
      task.mark_done!
    end
    @tasks
    # Marks all todos as complete
  end
end
