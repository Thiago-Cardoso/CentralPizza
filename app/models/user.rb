class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #add in app/models/user.rb
  validates :name, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  validates :position_id, :encrypted_password, presence: true
  validates :email, uniqueness: true
  validates :name, length: { maximum: 100, too_long: "-> %{count} characters is the maximum allowed", minimum: 2, too_short: "-> %{count} characters is the minimum allowed" }
  validates :email, length: { maximum: 100, too_long: "-> %{count} characters is the maximum a" }

end
