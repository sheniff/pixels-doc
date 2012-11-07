class FunctionsController < ApplicationController
  def show
    @categories = Category.order("name")
    @functions = Function.order("name")

    @function = Function.find(params[:id])
  end

  def edit
    @categories = Category.order("name")
    @functions = Function.order("name")

    @function = Function.find(params[:id])
  end

  def new
    @categories = Category.order("name")
    @functions = Function.order("name")

    @function = Function.new
  end

  def create
    @categories = Category.order("name")
    @functions = Function.order("name")

    @function = Function.new(params[:function])
    if @function.save
      flash[:success] = "New function created: #{@function.name}"
      redirect_to @function
    else
      render 'new'
    end
  end

  def update
    @categories = Category.order("name")
    @functions = Function.order("name")

    @function = Function.find(params[:id])
    if @function.update_attributes(params[:function])
      flash[:success] = "#{@function.name} updated!"
      redirect_to @function
    else
      render 'edit'
    end
  end
end
