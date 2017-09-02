class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true

      t.timestamps
      
      t.references :micorpost, foreign_key: true
      t.references :favorite, foreign_key: { to_table: :microposts }
      
      t.index [:micorpost_id, :favorite_id], unique: true
    end
  end
end
