class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
end
