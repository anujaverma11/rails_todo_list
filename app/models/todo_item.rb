class TodoItem < ActiveRecord::Base
	# before_create :default_values

 #  def default_values
 #    self.completed = false
 #    true
 #  end

  def complete?
    self.completed == true
  end

  def uncomplete
    update completed: false
  end

  def complete
    update completed: true
  end

end
