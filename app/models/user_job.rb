class UserJob < ActiveRecord::Base
  belongs_to :job
  belongs_to :user

  validates_presence_of :user_id
  validates_presence_of :job_id
end
