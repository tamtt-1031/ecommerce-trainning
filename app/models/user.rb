class User < ApplicationRecord
  has_secure_password

  has_many :orders
  has_many :order_items, through: :orders

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
      uniqueness: { case_sensitive: true }

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  before_save :default_value

  # def is_enable=(value)
  #   self.is_enable = value
  # end

  private

  # set role = User is default
  def default_value
    self.role ||= "User" 

  end
end
