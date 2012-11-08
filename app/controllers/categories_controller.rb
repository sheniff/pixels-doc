class CategoriesController < CommonController
  before_filter :signed_in_user, only: [:create]
  before_filter :sidebar_data, except: [:create]

  def index
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @cat = Category.new(params[:category])
    if @cat.save
      redirect_to root_url
    else
      flash.now[:error] = "Category invalid. Please try again."
      redirect_to root_url
    end
  end
end
