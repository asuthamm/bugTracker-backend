class TicketSerializer < ActiveModel::Serializer
  attributes :title, :description, :deadline, :status, :category, :attach_link
end
