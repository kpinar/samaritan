class ReportController < ApplicationController

	def index
		@reports = Report.all
		@report_last = Report.last
		@report_lat = @report_last.latitude
		@report_lon = @report_last.longitude

		@geojson = Array.new
		@reports.each do |report|
			if report.report_type == "Assault" || report.report_type == "Hate Crime" || report.report_type == "Shooting" || report.report_type == "Kidnapping" || report.report_type == "Sexual Assault" || report.report_type == "Stabbing" || report.report_type == "Homicide"
				@geojson << {
						type: 'Feature',
	            geometry: {
	              type: 'Point',
	              coordinates: [report.longitude, report.latitude]},
	            properties: {
	                title: report.report_type,
	                description: report.address,
	                'marker-size': 'large',
	                'marker-color': '#F53333',
	                'marker-symbol': 'hospital'
	            }
				}
			elsif report.report_type == "Drug"|| report.report_type == "Harassment"|| report.report_type == "Stalking"
				@geojson << {
						type: 'Feature',
	            geometry: {
	              type: 'Point',
	              coordinates: [report.longitude, report.latitude]},
	            properties: {
	                title: report.report_type,
	                description: report.address,
	                'marker-size': 'large',
	                'marker-color': '#FFA347',
	                'marker-symbol': 'hospital'
	            }
				}
      else report.report_type == "Theft"|| report.report_type == "Arson"|| report.report_type == "Disorderly Conduct"|| report.report_type == "Vandalism"
      	@geojson << {
						type: 'Feature',
	            geometry: {
	              type: 'Point',
	              coordinates: [report.longitude, report.latitude]},
	            properties: {
	                title: report.report_type,
	                description: report.address,
	                'marker-size': 'large',
	                'marker-color': '#FFD738',
	                'marker-symbol': 'hospital'
	            }
				}
      end
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
