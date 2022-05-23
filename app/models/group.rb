class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :entity, class_name: 'Entity'
end
