class CreateVenueOpeningHours < ActiveRecord::Migration
  def change
    create_table :venue_opening_hours do |t|
      t.integer :venue_id
      t.time :starttime_1
      t.time :endtime_1
      t.boolean :closed_1
      t.time :starttime_2
      t.time :endtime_1
      t.boolean :closed_2
      t.time :starttime_3
      t.time :endtime_3
      t.boolean :closed_3
      t.time :starttime_4
      t.time :endtime_4
      t.boolean :closed_4
      t.time :starttime_5
      t.time :endtime_5
      t.boolean :closed_5
      t.time :starttime_6
      t.time :endtime_6
      t.boolean :closed_6
      t.time :starttime_0
      t.time :endtime_0
      t.boolean :closed_0

      t.timestamps
    end
  end
end
