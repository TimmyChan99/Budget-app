class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :purchases, foreign_key: 'group_id', dependent: :delete_all

  validates :name, :icon, presence: true
end
