class Project < ApplicationRecord
  has_many :tickets, :dependent => :delete_all
  belongs_to :user
  validates :name, uniqueness: { case_sensitive: false }
end
