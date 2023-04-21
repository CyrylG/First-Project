class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list << todo
    #todo is instance of Todo
  end

  def list
    @todo_list
    #returns list of todos
  end
end
