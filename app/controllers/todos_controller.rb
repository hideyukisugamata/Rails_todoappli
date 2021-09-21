class TodosController < ApplicationController

  def index
    @todo_list = Todo.all
  end

  def new
    @new_todo_list = Todo.new
  end

  def create
    @new_todo_list = Todo.new(todo_params)
    if @new_todo_list.save
      redirect_to root_path,notice:'Success!'
    else
      flash[:alert] = 'Save Error!'
      render:new
    end
  end

  def edit
    @edit_todo_list = Todo.find(params[:id])
  end

  def update
    @update_todo_list = Todo.find(params[:id])
    @update_todo_list.update(todo_params)
    if @update_todo_list.update(todo_params)
      redirect_to root_path,notice:'Success!'
    else
      flash[:alert] ='Update Error!'
      render:edit
    end
  end
  
  def delete
    @delete_todo_list = Todo.find(params[:id])
    @delete_todo_list.destroy!
    if @delete_todo_list.destroy!
      redirect_to root_path,notice:'Success!'
    else
      flash[:alert] = 'Delete Error!'
      render:edit
    end
  end
  
  private
    def todo_params
      # byebug
      params.require(:todo).permit(:list)
    end
end
