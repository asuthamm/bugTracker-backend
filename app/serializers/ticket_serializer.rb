class TicketSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :deadline, :status, :category, :attach_link, :project_id
end
