class User < ActiveRecord::Base
  has_many :watched_coins, dependent: :destroy
  has_many :coins, through: :watched_coins
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end
