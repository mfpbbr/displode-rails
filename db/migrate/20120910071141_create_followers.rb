class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :entity
      t.string :handle
      t.string :firstName
      t.string :lastName
      t.string :avatar

      t.timestamps
    end
  end
end
