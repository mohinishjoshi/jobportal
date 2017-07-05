class Job < ActiveRecord::Base
  # attr_accessible :title, :description, :completed_at, :organization, :location, :experience, :skills
  belongs_to :user
end
