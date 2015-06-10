class ReportController < ApplicationController

	def index
		@reports = Report.all
	end

	def create
		@report = Report.new(report_params)
		if @report.save
  		redirect_to root_path
  	else
  		render :new
  	end
	end

	def new
		@report = Report.new
	end
	
	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def report_params
  		params.require(:report).permit(:title, :type, :time, :description, :address, :latitude, :longitude)
	end
end
