# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
currencies = Currency.create([{:name => "Euro", :code =>"EUR"}, {:name =>"US Dollar", :code =>"USD"}, {:name =>"British Pound", :code =>"GBP"}])

countries = Country.create([{:name =>"Germany" , :isd_code =>"DE"}, {:name =>"USA" , :isd_code =>"US"}])
 
workspacetypes = WorkspaceType.create([{:name =>"Office"}, {:name =>"Meeting_room"}, {:name =>"Open_desk"}, {:name =>"Conference_room"}])

venuetypes = VenueType.create([{:name => "Business Center"}, {:name => "Hotel"}, {:name => "Co-Working Place"}])

venues = Venue.create([{:name => 'Excellent Business Center Berlin', :company => 'Excellent Business Center Berlin', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, alias illo tempora laborum voluptatem. Ea, commodi, animi, suscipit ipsum impedit eaque quis doloribus molestias placeat tenetur repudiandae soluta provident perspiciatis!', country_id: 1, :postal_code => '10117', :state => 'Berlin', :city => 'Berlin', :street => 'Unter den Linden 17', :address_extra => '', :latitude => '52.516707', :longitude => '13.390403', :arrival_info => 'Just come and enjoy', :contact_person => 'Nike Westerman', :contact_phone => '030 408 173-0', :contact_fax => '+12345', :contact_email => 'abc@abc.com', :currency_id => 1, :time_zone => 'Europe/Berlin', :venue_type_id => 1},
						 {:name => 'Dussmann Service Deutschland GmbH Friedrichstraße', :company => 'Dussmann Deutschland GmbH', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, alias illo tempora laborum voluptatem. Ea, commodi, animi, suscipit ipsum impedit eaque quis doloribus molestias placeat tenetur repudiandae soluta provident perspiciatis!', :country_id => 1, :postal_code => '10117', :state => 'Berlin', :city => 'Berlin', :street => 'Friedrichstraße 90', :address_extra => '', :latitude => '52.518299', :longitude => '13.388490', :arrival_info => 'Just come and enjoy', :contact_person => 'Margit Krätzig', :contact_phone => '030 20 25 - 30 00', :contact_fax => '030 20 25 - 30 33', :contact_email => 'abc@abc.com', :currency_id => 1, :time_zone => 'Europe/Berlin', :venue_type_id => 1}])

workspaces = Workspace.create([{:venue_id => 1, :name => 'Office 101', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', :workspace_type_id => 1, :max_capacity => '2', :multiple_workspace => false, :charged_by_person_count => false},
				{:venue_id => 1, :name => 'Office 102', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', :workspace_type_id => 1, :max_capacity => '3', :multiple_workspace => false, :charged_by_person_count => false},
				{:venue_id => 2, :name => 'Office Opum', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', :workspace_type_id => 1, :max_capacity => '1', :multiple_workspace => false, :charged_by_person_count => false},
				{:venue_id => 2, :name => 'Office Distrum', :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', :workspace_type_id => 1, :max_capacity => '2', :multiple_workspace => false, :charged_by_person_count => false}])