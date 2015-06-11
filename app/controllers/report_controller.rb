class ReportController < ApplicationController

	def index
		@reports = Report.all
		@report_last = Report.last
		@report_lat = @report_last.latitude
		@report_lon = @report_last.longitude

		@geojson = Array.new
		@reports.each do |report|
			@geojson << {
					type: 'Feature',
            geometry: {
              type: 'Point',
              coordinates: [report.longitude, report.latitude]},
            properties: {
                title: report.report_type,
                description: report.address,
                #if report.report_type == ""
                'marker-size': 'large',
                'marker-color': '#BE9A6B',
                'marker-symbol': 'cafe'
            }
			}
		end
		respond_to do |format|
			format.html
			format.json { render json: @geojson }
		end

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
  		params.require(:report).permit(:title, :time, :description, :address, :latitude, :longitude, :report_type)
	end
end
