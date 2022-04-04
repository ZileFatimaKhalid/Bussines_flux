class CreateBussinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :bussinesses do |t|
      t.string :title
      t.integer :b_id
      t.string :description

      t.timestamps
    end
  end
end
