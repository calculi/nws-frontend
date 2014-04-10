class Workspace < ActiveRecord::Base
	attr_accessible :venue_id, :name, :description, :workspace_type_id, :max_capacity, :amenity_id, :multiple_workspace, :charged_by_person_count, :workspace_status_id

	belongs_to :workspace_type
	belongs_to :venue
	# mount_uploader :main_photo, MainPhotoUploader

	has_one :workspace_price

	scope :venue_id, -> (venue_id) { where venue_id: venue_id }
end
