# This migration comes from refinery_results (originally 1)
class CreateResultsResults < ActiveRecord::Migration

  def up
    create_table :refinery_results do |t|
      t.string :title
      t.date :result_date
      t.string :location
      t.string :body_of_water
      t.integer :place
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-results"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/results/results"})
    end

    drop_table :refinery_results

  end

end
