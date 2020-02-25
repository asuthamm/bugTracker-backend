class Project < ApplicationRecord
  has_many :tickets, :dependent => :delete_all
  belongs_to :user
end
