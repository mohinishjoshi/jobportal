class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :jobs

  def applied? (job)
    return UserJob.find_by_user_id_and_job_id(self.id, job.id).present?
  end
end
