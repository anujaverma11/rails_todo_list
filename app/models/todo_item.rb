class TodoItem < ActiveRecord::Base
	before_create :default_values
  def default_values
    # self.completed = false
    self.completed = false
    true
  end
end
