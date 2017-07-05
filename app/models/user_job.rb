class UserJob < ActiveRecord::Base
  has_one :job
  has_one :user
end
