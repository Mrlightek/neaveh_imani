class CreateClosets < ActiveRecord::Migration[7.2]
  def change
    create_table :closets do |t|
      t.timestamps
    end
  end
end
