class Spree::Newsletter < ActiveRecord::Base

  validates :subject, :body, presence: true

  default_scope { order(created_at: :desc) }
  
end