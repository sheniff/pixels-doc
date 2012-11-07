class FunctionsController < ApplicationController
  def show
    @categories = Category.order("name")
    @functions = Function.order("name")

    @function = Function.find(params[:id])
  end

  def edit
  end
end
