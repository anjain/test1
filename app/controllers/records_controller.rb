class RecordsController < ApplicationController
	before_action :signed_in_user, only: [:new, :show]
    

	def new
		@record = Record.new
	end

	def show
		@record = Record.all
	end

	def create
	 @record = Record.new(record_params)
       if @record.save
         flash[:success] = "Your Record is Inserted"
         render 'new'
         else
         render 'new'
        end
	end


	private
	def record_params
		params.require(:record).permit(:name, :email, :mathno, :physicsno, :chemistryno)
	end

	def signed_in_user
     unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
    end
    
end
end
