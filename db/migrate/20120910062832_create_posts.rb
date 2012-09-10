class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :latitude
      t.string :longitude
      t.string :scope

      t.timestamps
    end
  end
end
