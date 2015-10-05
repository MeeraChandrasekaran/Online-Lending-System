class Lender < ActiveRecord::Base
  has_secure_password
  has_many :lends
  has_many :borrowers, through: :lends

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :money, presence: true
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }



end
