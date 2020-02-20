class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :role, :email, :img_url
  has_many :projects
end
