class AddDetailToLearningusers < ActiveRecord::Migration[5.0]
  def change
    add_column :learningusers, :namesei, :string
    add_column :learningusers, :namemei, :string
  end
end
