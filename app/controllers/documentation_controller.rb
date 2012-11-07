class DocumentationController < ApplicationController
  def home
    @categories = Category.all
    @functions = Function.all

    @new_category = Category.new
  end
end
