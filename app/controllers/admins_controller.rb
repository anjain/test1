class AdminsController < ApplicationController

	def index

	end


  def new
  	@admin = Admin.new

  end

  def search
    @records = Admin.search(params[:search])
  end

  def create
    
    @admin = Admin.new(user_params)
    if @admin.save
    	#redirect_to admin_path(@admin)
      # Handle a successful save.

    else
      render 'new'
    end
  end

  

  def show
  	@admin = Admin.all
  end

  def login
      @login = Admin.new
  end


  def result
    @result = Admin.new
  end


  private

    def user_params
      params.require(:admin).permit(:name, :email, :physics,
                                   :chemistry, :math)
    end

    

    

end
