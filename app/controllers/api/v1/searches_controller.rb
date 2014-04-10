module Api
	module V1
		class SearchesController < ApplicationController
			respond_to :json

			def index
				@workspace = Workspace
								.joins(:venue)
								.where(['( 6371 * acos( cos( radians(:lat) ) * cos( radians( venues.latitude ) ) * cos( radians( venues.longitude ) - radians(:lng) ) + sin( radians(:lat) ) * sin( radians( venues.latitude ) ) ) ) < 10', {lat: params[:lat], lng: params[:lng]}])
								# .select(['*, ( 6371 * acos( cos( radians(:lat) ) * cos( radians( venues.latitude ) ) * cos( radians( venues.longitude ) - radians(:lng) ) + sin( radians(:lat) ) * sin( radians( venues.latitude ) ) ) ) AS distance', {lat: "52.520007", lng: "13.404954"}])
								# .having('distance < 10')

				respond_to do |format|
				  format.json  { render :json => @workspace.to_json(:include => {:venue => {:include => [:country]}})}
				end
			end

			private
				def search_params
					# params.require(:search).permit(:city, :country, :latitude, :longitude, :period, :startDate, :endDate, :startTime, :endTime)
					params.require(:search).permit(:city, :latitude, :longitude)
				end
		end
	end
end