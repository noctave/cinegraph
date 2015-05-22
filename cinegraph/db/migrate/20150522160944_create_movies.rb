class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :movie_id
      t.string :title
      t.string :url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
