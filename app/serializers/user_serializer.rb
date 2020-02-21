class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :role, :email, :img_url
  has_many :projects
  has_many :tickets
end
