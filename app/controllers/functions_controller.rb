class FunctionsController < CommonController
  before_filter :signed_in_user, only: [:edit, :new, :create, :update]
  before_filter :sidebar_data, except: [:create]

  def show
    @function = Function.find(params[:id])
  end

  def edit
    @function = Function.find(params[:id])
  end

  def new
    @function = Function.new
  end

  def create
    @function = Function.new(params[:function])
    if @function.save
      flash.now[:success] = "New function created: #{@function.name}"
      redirect_to @function
    else
      render 'new'
    end
  end

  def update
    @function = Function.find(params[:id])
    if @function.update_attributes(params[:function])
      flash.now[:success] = "#{@function.name} updated!"
      redirect_to @function
    else
      render 'edit'
    end
  end
end
