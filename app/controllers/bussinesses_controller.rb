class BussinessesController < ApplicationController
	
	def index
		@bussinesses = Bussiness.all
	end

	def show
		@bussinesses = Bussiness.find(params[:id])
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
		@bussinesses = Bussiness.find(params[:id])
    end

	def update
		@bussinesses = Bussiness.find(params[:id])

		if @bussiness.update(bussiness_params)
			redirect_to :action => 'show', :id => @bussiness
		else
			render :action => 'edit'
        end
	end


   def destroy
   	@bussiness.destroy
   redirect_to :action => 'list'
 end

end
