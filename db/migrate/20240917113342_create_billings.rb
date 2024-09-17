class CreateBillings < ActiveRecord::Migration[7.2]
  def change
    create_table :billings do |t|
      t.timestamps
    end
  end
end
