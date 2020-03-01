class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id
  has_many :tickets
end
