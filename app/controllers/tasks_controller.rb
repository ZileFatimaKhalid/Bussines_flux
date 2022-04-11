class TasksController < ApplicationController

def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)

		if @task.save
			redirect_to :action => 'index'
		else
			render :action => 'new'
       end
     end

 def task_params
   params.require(:task).permit(:title, :task_type, :due_date, :assignee_id)
 end
end


    

