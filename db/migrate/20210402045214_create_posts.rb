class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title
      t.text       :memo
      t.integer    :category_id,  null: false
      t.integer    :deadline_id,  null: false
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
