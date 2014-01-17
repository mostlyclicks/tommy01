module Refinery
  module Bios
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Bios

      engine_name :refinery_bios

      initializer "register refinerycms_bios plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "bios"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.bios_admin_bios_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/bios/bio',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Bios)
      end
    end
  end
end
