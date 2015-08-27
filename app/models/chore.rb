class Chore < ActiveRecord::Base
  belongs_to :user

  scope :created_in_last_week, -> { where("created_at >= ?", 1.week.ago.utc).order(endtime: :desc).limit(5) }
end
