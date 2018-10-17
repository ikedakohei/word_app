class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable,
  # :omniauthable, :registerable, :recoverable, :rememberable
  devise :database_authenticatable, :validatable

  has_many :comments, dependent: :destroy
end
