# This migration comes from refinery_jobs (originally 1)
class CreateJobsJobs < ActiveRecord::Migration

  def up
    create_table :refinery_jobs do |t|
      t.string :name
      t.text :description
      t.date :completed_on
      t.integer :photo_1_id
      t.integer :photo_2_id
      t.integer :photo_3_id
      t.integer :position

      t.timestamps
    end

    Refinery::Jobs::Job.create_translation_table! :name => :string, :description => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-jobs"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/jobs/jobs"})
    end

    drop_table :refinery_jobs

    Refinery::Jobs::Job.drop_translation_table!

  end

end
