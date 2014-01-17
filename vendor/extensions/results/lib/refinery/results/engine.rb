module Refinery
  module Results
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Results

      engine_name :refinery_results

      initializer "register refinerycms_results plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "results"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.results_admin_results_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/results/result'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Results)
      end
    end
  end
end
