class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:twitter]

  after_create :send_welcome_email
  def self.from_twitter(auth)
    create! do |user|
     user.name = auth.info.nickname
     user.uid = auth.uid
     user.password = SecureRandom.hex
    end
 end

  private

    def send_welcome_email
    	UserMailer.welcome_email(self).deliver
    end
end
