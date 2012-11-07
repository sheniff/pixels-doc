class FunctionsController < ApplicationController
  def show
    @categories = Category.all
    @functions = Function.all

    @function = Function.find(params[:id])
  end

  def edit
  end
end
