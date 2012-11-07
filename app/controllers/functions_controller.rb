class FunctionsController < ApplicationController
  def show
    @categories = Category.order("name")
    @functions = Function.order("name")

    @function = Function.find(params[:id])
  end

  def edit
  end

  def new
    @categories = Category.order("name")
    @functions = Function.order("name")

    @new_function = Function.new
  end

  def create
    @function = Function.new(params[:function])
    if @function.save
      flash[:success] = "New function created: #{@function.name}"
      redirect_to @function
    else
      render 'new'
    end
  end
end
