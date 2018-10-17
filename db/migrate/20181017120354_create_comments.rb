class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string     :content,  null: false, default: ""
      t.references :user,     null: false, foreign_key: true 
      t.timestamps
    end
  end
end
