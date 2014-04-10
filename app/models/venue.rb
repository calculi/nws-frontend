class Venue < ActiveRecord::Base
	attr_accessible :name, :company, :description, :country_id, :postal_code, :state, :city, :street, :address_extra, :latitude, :longitude, :arrival_info, :contact_person, :contact_phone, :contact_fax, :contact_email, :url_website, :url_twitter, :url_googleplus, :url_linkedin, :currency_id , :stripe_merchant_id, :venue_status_id, :vat, :main_photo, :time_zone , :venue_type_id, :cancellation_time_id

	belongs_to :country
	belongs_to :currency
	belongs_to :venue_type

	has_many :workspace

	scope :city, -> (city) { where city: city }

	# geocoded_by :full_address   # can also be an IP address
	# after_validation :geocode
	
	# mount_uploader :main_photo, MainPhotoUploader

	def full_address
		"#{street}, #{postal_code}, #{city}, #{country}"
	end

end
