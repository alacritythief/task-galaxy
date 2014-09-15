class TaskList < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  has_many :users
end
