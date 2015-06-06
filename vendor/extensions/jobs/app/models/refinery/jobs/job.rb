module Refinery
  module Jobs
    class Job < Refinery::Core::BaseModel
      self.table_name = 'refinery_jobs'


      translates :name, :description

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo_1, :class_name => '::Refinery::Image'

      belongs_to :photo_2, :class_name => '::Refinery::Image'

      belongs_to :photo_3, :class_name => '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

    end
  end
end
