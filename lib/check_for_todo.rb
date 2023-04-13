#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO.

def check_for_todo(text)
  if text.include?("#TODO")
    true
  else
    false
  end
end
