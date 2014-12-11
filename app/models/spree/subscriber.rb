class Spree::Subscriber < ActiveRecord::Base
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  after_create :add_token

  private

  def add_token
    salt = 'awsome sauce'
    self.update_attribute(:token, Digest::SHA256.base64digest(email + created_at.to_s + salt))
  end
end

