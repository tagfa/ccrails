class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :userid
      t.string :password
      t.string :name
      t.string :furigana
      t.string :mail
      t.string :cardcompany
      t.string :cardno
      t.string :cardlimit
      t.string :cardname

      t.timestamps
    end
  end
end
