class CreatePingpongs < ActiveRecord::Migration
  def change
    create_table :pingpongs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
