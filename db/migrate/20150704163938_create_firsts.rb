class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.string :name
      t.timestamps
    end
  end
end
