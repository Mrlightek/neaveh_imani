class CreateOnboardings < ActiveRecord::Migration[7.2]
  def change
    create_table :onboardings do |t|
      t.timestamps
    end
  end
end
