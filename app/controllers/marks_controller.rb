class MarksController < ApplicationController
  def admin
  	@marks = Marks.new
  end
  
  def create
  	@marks = Marks.new(marks_params)
  	@user=User.find_by(email:@marks.email)
  	@marks.total=@marks.physics+@marks.chamistry+@marks.maths
  	@marks.user_id=@user.id
  	 if @marks.save
      # Handle a successful save.
      redirect_to root_path
    else
      render 'new'
    end
  end
  def student
  end
  def marks_params
      params.require(:marks).permit(:email, :physics, :chamistry,
                                   :maths)
    end
end
