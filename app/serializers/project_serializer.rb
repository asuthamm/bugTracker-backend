class ProjectSerializer < ActiveModel::Serializer
  attributes :name, :desription
  has_many :tickets
end
