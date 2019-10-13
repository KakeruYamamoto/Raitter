class CreateRaeets < ActiveRecord::Migration[5.2]
  def change
    create_table :raeets do |t|
      t.text :content
      t.timestamps
    end
  end
end
