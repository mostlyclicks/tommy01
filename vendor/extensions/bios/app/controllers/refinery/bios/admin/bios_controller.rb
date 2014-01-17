module Refinery
  module Bios
    module Admin
      class BiosController < ::Refinery::AdminController

        crudify :'refinery/bios/bio',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
