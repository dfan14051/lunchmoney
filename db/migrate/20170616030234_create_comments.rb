class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :order, foreign_key: true
      t.string :content
      t.references :user

      t.timestamps
    end
  end
end
