class RemoveUpdates < ActiveRecord::Migration
  def self.up
    drop_table :updates
  end

  def self.down
    create_table :updates do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
