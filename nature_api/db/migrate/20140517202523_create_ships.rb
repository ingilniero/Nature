class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :code
      t.integer :number

      t.timestamps
    end
  end
end
