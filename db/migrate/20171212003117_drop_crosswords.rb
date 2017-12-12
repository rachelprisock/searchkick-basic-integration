class DropCrosswords < ActiveRecord::Migration
  def change
    drop_table :crosswords
  end
end
