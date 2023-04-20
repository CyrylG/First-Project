class Todo
  def initialize(task)
    @task = task
    @complete = false
    # task is a string
    # ...
  end

  def task
    @task
    # Returns the task as a string
  end

  def mark_done!
    @complete = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    @complete
    # Returns true if the task is done
    # Otherwise, false
  end
end
