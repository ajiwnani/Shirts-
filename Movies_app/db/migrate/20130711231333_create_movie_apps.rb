class CreateMovieApps < ActiveRecord::Migration
  def change
    create_table :movie_apps do |t|
      t.string :title
      t.string :string

      t.timestamps
    end
  end
end
