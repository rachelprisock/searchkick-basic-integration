class CreateCrossword < ActiveRecord::Migration
  def change
    create_table :crosswords do |t|
      t.string :name
      t.timestamps
    end
  end
end
