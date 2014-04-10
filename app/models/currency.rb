class Currency < ActiveRecord::Base
	attr_accessible :name, :code

	has_many :venue
end
