class Topic < ApplicationRecord
  has_many :users, through: :topic_users
end
