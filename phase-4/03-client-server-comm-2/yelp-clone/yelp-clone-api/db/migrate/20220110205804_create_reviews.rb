class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :business
      t.belongs_to :user 
      t.text :content 
      t.timestamps
    end
  end
end
