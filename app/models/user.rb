class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable,
  # :omniauthable, :registerable, :recoverable, :rememberable
  devise :database_authenticatable, :validatable

  has_many :comments, dependent: :destroy

  def self.comments_desc
    left_joins(:comments).includes(:comments).distinct.order("comments.id desc")
  end
end
