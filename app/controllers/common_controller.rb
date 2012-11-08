class CommonController < ApplicationController

  private
    def signed_in_user
      redirect_to user_session_path, notice: "Please sing in." unless user_signed_in?
    end

    def sidebar_data
      @categories = Category.order("name")
      @functions = Function.order("name")
      @new_category = Category.new
    end
end
