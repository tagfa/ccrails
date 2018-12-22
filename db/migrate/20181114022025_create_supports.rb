class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.text :content
      t.integer :userid

      t.timestamps
    end
  end
end
