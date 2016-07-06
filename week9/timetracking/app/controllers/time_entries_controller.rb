class TimeEntriesController < ApplicationController

	def destroy
		flash[:success] = 'Time Entry Deleted'
		@project = Project.find(params[:project_id])
    	@time_entry = @project.time_entries.find(params[:id])
    	 
    	 @time_entry.destroy
    		redirect_to project_time_entries_path(@project)
    
    			# render 'new'
 

	end

	def update
		@project = Project.find(params[:project_id])
		time_entry = @project.time_entries.find(params[:id])
		# time_entry_params = params.require(:time_entry).permit( :hours, :minutes, :date, :comment)
		
		
			if time_entry.update(time_entry_params)
				redirect_to project_time_entries_path(@project)
			else
				render 'edit'
			end

	end

	def edit

		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])

	end

	 def new

	 	@project = Project.find(params[:project_id])
	 	@time_entry = @project.time_entries.new
	 	@time
	 end

	def create
		# @input: params[:project_id] and params[:time_entry]
		@project = Project.find params[:project_id]
		# time_entry_params = params.require(:time_entry).permit(
		# 	:hours, :minutes, :date)
		
		@time_entry = @project.time_entries.new(time_entry_params)

			if @time_entry.save
				flash[:notice] = "Time Entry Created Successfully"
				redirect_to project_time_entries_path(@project), notice: "Time Entry Created Successfully"
			else
				render 'new'
			end

	end



	 def index
	 	@project = Project.find(params[:project_id])
	 	@time_entries = @project.time_entries
	 end




private

	def time_entry_params 
	params.require(:time_entry).permit( :hours, :minutes, :date, :comment)

	end
end









