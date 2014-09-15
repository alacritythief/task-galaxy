class Task < ActiveRecord::Base
  belongs_to :user
  has_one :user
  validates :name, presence: true
end
