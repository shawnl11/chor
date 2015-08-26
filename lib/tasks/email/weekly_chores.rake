namespace :email do
  task :weekly_chores => :environment do
  	User.all.find_each do |user|
  	  UserMailer.weekly_chores(user).deliver_now
  	end
  end
end