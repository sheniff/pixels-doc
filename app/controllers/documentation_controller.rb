class DocumentationController < ApplicationController
  def home
    @categories = Category.all
    @functions = Function.all
  end
end
