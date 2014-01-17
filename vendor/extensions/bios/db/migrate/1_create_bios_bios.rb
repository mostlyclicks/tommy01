class CreateBiosBios < ActiveRecord::Migration

  def up
    create_table :refinery_bios do |t|
      t.string :name
      t.text :bio_description
      t.integer :bio_pict_id
      t.text :bio_excerpt
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-bios"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/bios/bios"})
    end

    drop_table :refinery_bios

  end

end
