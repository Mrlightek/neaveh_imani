class AddTitleToWeather < ActiveRecord::Migration[7.2]
  def change
    add_column :weathers, :title, :string
  end
end
