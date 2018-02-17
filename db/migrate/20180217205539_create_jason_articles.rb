class CreateJasonArticles < ActiveRecord::Migration
  def change
    create_table :jason_articles do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.boolean :active

      t.timestamps
    end
  end
end
