class TimeEntriesController < ApplicationController

	 def new

	 	@project = Project.find(params[:project_id])
	 	@time_entry = @project.time_entries.new
	 	@time
	 end

	def create
		# @input: params[:project_id] and params[:time_entry]
		@project = Project.find params[:project_id]
		time_entry_params = params.require(:time_entry).permit(
			:hours, :minutes, :date)
		
		@time_entry = @project.time_entries.new params[time_entry_params]

			if @time_entry.save
				redirect_to project_time_entries_path(project)
			else
				render 'new'
			end

	end



	 def index
	 	@project = Project.find(params[:project_id])
	 	@time_entries = @project.time_entries
	 end

end

