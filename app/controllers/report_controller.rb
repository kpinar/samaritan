class ReportController < ApplicationController
	def create
 	 @report = Report.create(report_params)
	end

	def index
	end
	
	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
  		params.require(:report).permit(:avatar)
	end
end
