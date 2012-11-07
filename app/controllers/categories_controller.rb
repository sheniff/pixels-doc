class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @functions = Function.all
  end

  def show
    @categories = Category.all
    @functions = Function.all

    @category = Category.find(params[:id])
  end
end
