class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :email
      t.text :comment
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
