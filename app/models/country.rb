class Country < ActiveRecord::Base
	attr_accessible :isd_code, :name
	
	has_many :venue
end
