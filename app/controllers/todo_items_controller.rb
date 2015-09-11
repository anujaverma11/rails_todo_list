class TodoItemsController < ApplicationController

	def index
		@list = TodoItem.all.order(:created_at)
	end

	def show
	end

	def create
		@item = TodoItem.create(item_params)
		redirect_to root_path
	end

	def update
		@item = TodoItem.find(params[:id])
		if @item.complete?
			@item.uncomplete
		else
			@item.complete
		end

		redirect_to root_path
	end

	def destroy
		TodoItem.find(params[:id]).destroy
		redirect_to root_path
	end


	private
	def item_params
		params.require(:todo_item).permit(:name)
	end

end
