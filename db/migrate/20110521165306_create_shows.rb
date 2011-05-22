class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.date :date
      t.string :location
      t.string :link
      t.string :venue

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
