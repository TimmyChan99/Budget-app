class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :purchases, foreign_key: 'entity_id', dependent: :delete_all
end
