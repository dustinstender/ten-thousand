class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :skill
      t.integer :hours

      t.timestamps
    end
  end
end
