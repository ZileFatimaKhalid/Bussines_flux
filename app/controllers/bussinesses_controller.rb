class BussinessesController < ApplicationController
	before_action :set_bussiness, only: %i[ show edit update destroy ]
	
	def index
		@bussinesses = Bussiness.all
	end

	def show
	end

	def new
		
		@bussiness = Bussiness.new
	end

	def add_users

		# if (current_user.id :user_id)
		@TeamMember= TeamMember.new
	end


	#def createmember
	#	@TeamMember = TeamMember.new(members_params)

        #if @TeamMember.save
        	#TeamMember.create(user_id: .id, bussiness_id: .id)

	def create
		
		@bussiness = Bussiness.new(bussiness_params)

		if @bussiness.save
			TeamMember.create(user_id: current_user.id, bussiness_id: @bussiness.id)
			redirect_to :action => 'index'
		else
			render :action => 'new'
       end
     end

    def edit
    end

	def update

		if @bussiness.update(bussiness_params)
			redirect_to :action => 'show', :id => @bussiness
		else
			render :action => 'edit'
        end
	end


   def destroy
   	@bussiness.destroy
    redirect_to :action => 'index'

   end
   
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_bussiness
      @bussiness = Bussiness.find(params[:id])
    end  
    
    def bussiness_params
    	params.require(:bussiness).permit(:title, :description)
    end

    def members_params
    	debugger
    	params.require(:team_member).permit(:user_id, :bussiness_id)
    end
  end 
