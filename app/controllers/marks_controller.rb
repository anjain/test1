class MarksController < ApplicationController
  
   def show
  @mark = Mark.find(params[:id])
  end
  

  def AddMarks
  	@mark=Mark.new
  end
  

    def create
    @mark = Mark.new(user_params)
    if @mark.save
      # Handle a successful save.
    else
      render 'new'
    end
  end


  private

    def user_params
      params.require(:mark).permit(:name, :email, :phy,
                                   :chem,:math)
    end
end
