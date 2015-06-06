module Refinery
  module Jobs
    module Admin
      class JobsController < ::Refinery::AdminController

        crudify :'refinery/jobs/job',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def job_params
          params.require(:job).permit(:name, :description, :completed_on, :photo_1_id, :photo_2_id, :photo_3_id)
        end
      end
    end
  end
end
