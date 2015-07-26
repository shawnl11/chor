class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :title
      t.string :url
      t.datetime :starttime
      t.datetime :endtime
      t.boolean :allday, :default => false
      t.string :chore_location

      t.timestamps null: false
    end
  end
end
