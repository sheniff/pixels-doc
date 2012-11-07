class DocumentationController < ApplicationController
  def home
    @categories = Category.order("name")
    @functions = Function.order("name")

    @new_category = Category.new
  end
end
