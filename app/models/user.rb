class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers, through: :questions
  has_many :friendships
  has_many :friends, through: :friendships

  def not_friends_with?(id_of_friend)
    !self.friends.where(id: id_of_friend).exists?
  end
end
