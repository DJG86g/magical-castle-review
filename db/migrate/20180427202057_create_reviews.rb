class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :rating, null: false
      t.belongs_to :user
      t.belongs_to :ride 
    end
  end
end
