class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :completed_at
      t.text :description
      t.text :title
      t.text :organization
      t.integer :user_id
      t.string :location
      t.text :skills
      t.integer :experience

      t.timestamps
    end
  end
end
