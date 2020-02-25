class User < ApplicationRecord
  has_many :projects, :dependent => :delete_all
  has_many :tickets, through: :projects
  has_secure_password
end
