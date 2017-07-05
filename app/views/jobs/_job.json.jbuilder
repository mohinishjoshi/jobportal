json.extract! job, :id, :completed_at, :description, :title, :organization, :user_id, :location, :skills, :experience, :created_at, :updated_at
json.url job_url(job, format: :json)
