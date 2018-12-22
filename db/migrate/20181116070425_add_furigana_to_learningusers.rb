class AddFuriganaToLearningusers < ActiveRecord::Migration[5.0]
  def change
    add_column :learningusers, :furisei, :string
    add_column :learningusers, :furimei, :string
  end
end
