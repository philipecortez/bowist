class User < ApplicationRecord
  belongs_to :team
  validates :name, :email, :password, :team, presence: true
  validates :email, uniqueness: true
end
