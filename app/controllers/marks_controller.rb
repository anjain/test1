class MarksController < ApplicationController
  #before_action :signed_in_user, only: [:index, :edit, :update]
  #efore_action :correct_user,   only: [:edit, :update]

  def index
     @mark=Mark.all

  end




   def show
  @mark = Mark.find(params[:id])
  end
  

  def addmarks
  	@mark=Mark.new
  end
  

    def create
    @mark = Mark.new(user_params)
    if @mark.save
      redirect_to marks_path
    else
      redirect_to addmarks_path
    end
  end

  private

    def user_params
      params.require(:mark).permit(:name, :email, :phy,
                                   :chem,:math)
    end
end
