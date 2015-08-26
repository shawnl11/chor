class AddsUserIdToChores < ActiveRecord::Migration
  def change
  	add_reference :chores, :user, index: true
  end
end
