class User
  include Dynamoid::Document

  table name: "users", key: :user_id

  field :name
  field :email
end
