class CreateCountryPosts < ActiveRecord::Migration[7.2]
  def change
    create_table :country_posts do |t|
      t.string :title
      t.text :content
      t.references :country, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
