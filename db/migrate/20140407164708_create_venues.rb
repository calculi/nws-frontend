class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :company
      t.text :description
      t.integer :country_id
      t.string :postal_code
      t.string :state
      t.string :city
      t.string :street
      t.string :address_extra
      t.float :latitude
      t.float :longitude
      t.text :arrival_info
      t.string :contact_person
      t.string :contact_phone
      t.string :contact_fax
      t.string :contact_email
      t.string :url_website
      t.string :url_twitter
      t.string :url_googleplus
      t.string :url_linkedin
      t.integer :currency_id
      t.string :stripe_merchant_id
      t.integer :venue_status_id
      t.string :vat
      t.string :main_photo
      t.string :time_zone
      t.integer :venue_type_id
      t.integer :cancellation_time_id

      t.timestamps
    end
  end
end
