module Refinery
  module Results
    module Admin
      class ResultsController < ::Refinery::AdminController

        crudify :'refinery/results/result',
                :xhr_paging => true

      end
    end
  end
end
