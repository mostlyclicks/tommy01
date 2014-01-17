module Refinery
  module Bios
    class Bio < Refinery::Core::BaseModel
      self.table_name = 'refinery_bios'

      attr_accessible :name, :bio_description, :bio_pict_id, :bio_excerpt, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :bio_pict, :class_name => '::Refinery::Image'
    end
  end
end
