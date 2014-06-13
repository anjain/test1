class MarksController < ApplicationController
  #before_action :signed_in_user, only: [:index, :edit, :update]
  #efore_action :correct_user,   only: [:edit, :update]

  def index
     @mark=Mark.all

  end

  def sresult
    logger.debug current_user.inspect
    e=current_user.email
    @m=Mark.all
    @mark=Mark.find_by(email:e)
    
  
     a=[] 
    $total 
    @r
   
    @m.each do |p| 
     a << (p.math+p.phy+p.chem)
    end 
   a=a.uniq
   a.sort!
   a.reverse!

    @m.each do |p| 
    if e==p.email 
      $total=(p.math+p.phy+p.chem)
     end  
     end 
     
     
    count=0
    a.each do |x|
     count+=1 
       if $total == x
         @r=count 
          break 
      end 
    end  
   
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
      flash[:notice]="One Student Has Only One Record"
      redirect_to addmarks_path
    end
  end

  private

    def user_params
      params.require(:mark).permit(:name, :email, :phy,
                                   :chem,:math)
    end
end
