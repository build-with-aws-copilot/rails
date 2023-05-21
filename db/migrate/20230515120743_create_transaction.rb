class CreateTransaction < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :reference

      t.timestamps
    end
  end
end
