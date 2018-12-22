class CreateLearningusers < ActiveRecord::Migration[5.0]
  def change
    drop_table :learningusers
    create_table :learningusers do |t|
      t.string :namesei
      t.string :namemei

      t.timestamps
    end
  end
end
