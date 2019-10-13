class CreateRaeets < ActiveRecord::Migration[5.2]
  def change
    create_table :raeets do |t|

      t.timestamps
    end
  end
end
