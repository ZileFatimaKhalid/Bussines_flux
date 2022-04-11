class TeamMemberController < ApplicationController


def index
		@TeamMember = TeamMember.all
	end


def add_users
		
		@TeamMember= TeamMember.new(bussiness_id: params["bussiness_id"])
	end


	def createmember
	#debugger

	#@TeamMember = TeamMember.new()
	 
	 @TeamMember = TeamMember.new(params[:user_id])

        if @TeamMember.save
        	TeamMember.create(user_id: params["user_id"], bussiness_id: @bussiness.id)
            redirect_to :action => 'index'
        else 
            render :action => 'new'	
        end
     end 
 def members_params
    params.require(:team_member).permit(:user_id, :bussiness_id)
    Send