class TodoItemsController < ApplicationController

	def index
		@list = TodoItem.all
	end

	def show
	end

	def create
		@item = TodoItem.create!(item_params)
		p @item
		redirect_to root_path
	end

	def update
	end

	def destroy
	end

	private

	def item_params
		params.require(:todo_item).permit(:name)
	end

end
