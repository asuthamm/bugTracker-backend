class Ticket < ApplicationRecord
  belongs_to :project
  validates :title, uniqueness: { case_sensitive: false }
end
