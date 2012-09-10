class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :entity
      t.string :action
      t.string :object
      t.string :client

      t.timestamps
    end
  end
end
