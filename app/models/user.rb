class User < ApplicationRecord
  has_many :projects
  has_many :tickets, through: :projects
  has_secure_password
end
