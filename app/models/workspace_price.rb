class WorkspacePrice < ActiveRecord::Base
	attr_accessible :workspace_id, :hourly_price, :hourly_price_active, :half_day_price, :half_day_price_active, :day_price, :day_price_active, :monthly_price, :monthly_price_active
	
	belongs_to :workspace
end
