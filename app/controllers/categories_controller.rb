class CategoriesController < ApplicationController
  def index
    @categories = Category.order("name")
    @functions = Function.order("name")
  end

  def show
    @categories = Category.order("name")
    @functions = Function.order("name")

    @category = Category.find(params[:id])
  end

  def create
    @cat = Category.new(params[:category])
    if @cat.save
      redirect_to root_url
    else
      #add flash alert
      redirect_to root_url
    end
  end
end
