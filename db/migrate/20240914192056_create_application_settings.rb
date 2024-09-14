class CreateApplicationSettings < ActiveRecord::Migration[7.2]
  def change
    create_table :application_settings do |t|
      t.string :name
      t.string :logo_location
      t.text :tag_line
      t.string :company_name

      t.timestamps
    end
  end
end
