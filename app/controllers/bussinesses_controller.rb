class BussinessesController < ApplicationController
	before_action :set_bussiness, only: %i[ show edit update destroy ]
	
	def index
		@bussinesses = Bussiness.all
	end

	def show
	end

	def new
		@bussinesses = Bussiness.new
	end

	def create
		@bussinesses = Bussiness.new(bussiness_params)

		if @bussiness.save
			redirect_to :action => 'index'
		else
			render :action => 'new'
       end
     end


    def bussiness_params
    	params.require(:bussinesses).permit(:title, :b_id, :description)
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
      @blog = Bussiness.find(params[:id])
    end

end
