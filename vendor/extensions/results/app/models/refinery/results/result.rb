module Refinery
  module Results
    class Result < Refinery::Core::BaseModel
      self.table_name = 'refinery_results'

      attr_accessible :title, :result_date, :location, :body_of_water, :place, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
