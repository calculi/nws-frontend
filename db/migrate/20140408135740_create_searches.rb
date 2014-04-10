class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :city
      t.string :country
      t.string :latitude
      t.string :longitude
      t.string :period
      t.date :startDate
      t.date :endDate
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
