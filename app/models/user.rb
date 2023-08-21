class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_secure_password

  has_many :orders
  has_many :order_items, through: :orders

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
      uniqueness: { case_sensitive: true }

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  before_save :default_value, :create_remember_token

  enum role: [:user, :admin]

  private
  
  def default_value
    self.role ||= :user
  end

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
